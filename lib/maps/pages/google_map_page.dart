import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:qr_code/maps/consts.dart'; // Ensure your API key is configured here
import 'dart:async';
import 'package:supabase_flutter/supabase_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({super.key});

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  final locationController = Location();
  Completer<GoogleMapController> _controller = Completer();
  final supabase = Supabase.instance.client; // Supabase client

  static const googlePlex = LatLng(37.4223, -122.0848);
  static const mountainView = LatLng(37.3861, -122.0839);

  LatLng? currentPosition;
  Map<PolylineId, Polyline> polylines = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async => await fetchLocationUpdates());
  }

  Future<void> initializeMap() async {
    await fetchLocationUpdates();
    final coordinates = await fetchPolylinePoints();
    generatePolylineFromPoints(coordinates);
  }

  Future<void> _moveCameraTo(LatLng location) async {
    final controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newLatLng(location));
  }

  // Send user's location to the database
  Future<void> updateUserLocationInDatabase(LatLng location) async {
    final userId = "unique_user_id"; // Replace with actual user ID

    try {
      await supabase.from('user_locations').upsert({
        'user_id': userId,
        'latitude': location.latitude,
        'longitude': location.longitude,
        'updated_at': DateTime.now().toIso8601String(),
      });
    } catch (error) {
      debugPrint("Error updating user location: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Map"),
      ),
      body: currentPosition == null
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: currentPosition ?? googlePlex,
                zoom: 13,
              ),
              onMapCreated: (GoogleMapController controller) {
                if (!_controller.isCompleted) {
                  _controller.complete(controller);
                }
              },
              markers: {
                if (currentPosition != null)
                  Marker(
                    markerId: const MarkerId('currentLocation'),
                    icon: BitmapDescriptor.defaultMarker,
                    position: currentPosition!,
                  ),
              },
              polylines: Set<Polyline>.of(polylines.values),
            ),
    );
  }

  Future<void> fetchLocationUpdates() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await locationController.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await locationController.requestService();
      if (!serviceEnabled) return;
    }

    permissionGranted = await locationController.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await locationController.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return;
    }

    DateTime lastUpdate = DateTime.now();

    locationController.onLocationChanged.listen((currentLocation) {
      if (DateTime.now().difference(lastUpdate).inSeconds > 5) {
        lastUpdate = DateTime.now();

        if (currentLocation.latitude != null && currentLocation.longitude != null) {
          final newPosition = LatLng(currentLocation.latitude!, currentLocation.longitude!);
          
          setState(() {
            currentPosition = newPosition;
          });
          _moveCameraTo(newPosition);

          // Update user's location in the database
          updateUserLocationInDatabase(newPosition);
        }
      }
    });
  }

  Future<List<LatLng>> fetchPolylinePoints() async {
    final polylinesPoints = PolylinePoints();

    final result = await polylinesPoints.getRouteBetweenCoordinates(
      GOOGLE_MAPS_API_KEY,
      PointLatLng(googlePlex.latitude, googlePlex.longitude),
      PointLatLng(mountainView.latitude, mountainView.longitude),
    );

    if (result.points.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not fetch route. Please try again.')),
      );
      return [];
    } else {
      return result.points.map((point) => LatLng(point.latitude, point.longitude)).toList();
    }
  }

  Future<void> generatePolylineFromPoints(List<LatLng> polylinesCoordinates) async {
    const id = PolylineId('polyline');

    final polyline = Polyline(
      polylineId: id,
      color: Colors.blueAccent,
      points: polylinesCoordinates,
      width: 5,
    );

    setState(() => polylines[id] = polyline);
  }
}
