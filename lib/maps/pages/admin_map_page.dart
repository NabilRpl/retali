import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:supabase_flutter/supabase_flutter.dart'; // Supabase package

class AdminMapPage extends StatefulWidget {
  @override
  State<AdminMapPage> createState() => _AdminMapPageState();
}

class _AdminMapPageState extends State<AdminMapPage> {
  final locationController = Location();
  Completer<GoogleMapController> _controller = Completer();
  final supabase = Supabase.instance.client; // Supabase client

  LatLng? currentPosition; // Admin's current position
  Map<MarkerId, Marker> markers = {}; // Store user markers here
  Map<PolylineId, Polyline> polylines = {}; // Store polyline

  late StreamSubscription _locationSubscription; // Stream subscription

  static const defaultLocation = LatLng(20.5937, 78.9629); // Example default location

  @override
  void initState() {
    super.initState();
    listenToUserLocations(); // Start listening for real-time user location updates
    WidgetsBinding.instance.addPostFrameCallback((_) async => await fetchLocationUpdates());
  }

  // Listen to real-time user locations from Supabase
  void listenToUserLocations() {
    _locationSubscription = supabase
        .from('user_locations')
        .stream(primaryKey: ['user_id'])
        .listen((payload) {
      for (final updatedLocation in payload) {
        final latitude = updatedLocation['latitude'];
        final longitude = updatedLocation['longitude'];
        final userId = updatedLocation['user_id'];

        if (latitude != null && longitude != null && userId != null) {
          LatLng newLocation = LatLng(latitude, longitude);

          // Check if the widget is still mounted before calling setState
          if (mounted) {
            setState(() {
              markers[MarkerId(userId)] = Marker(
                markerId: MarkerId(userId),
                position: newLocation,
                icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
                infoWindow: InfoWindow(title: 'User $userId', snippet: 'Location updated'),
              );
            });
          }
        } else {
          debugPrint("Invalid location data: $updatedLocation");
        }
      }
    }, onError: (error) {
      debugPrint("Error in stream subscription: $error");
    });
  }

  // Fetch and update admin's current location
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
        }
      }
    });
  }

  // Move the camera to a specific location
  Future<void> _moveCameraTo(LatLng location) async {
    final controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newLatLng(location));
  }

  @override
  void dispose() {
    // Cancel the stream subscription when the widget is disposed
    _locationSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin: Live User Locations")),
      body: currentPosition == null
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: currentPosition ?? defaultLocation,
                zoom: 13,
              ),
              onMapCreated: (GoogleMapController controller) {
                if (!_controller.isCompleted) {
                  _controller.complete(controller);
                }
              },
              markers: markers.values.toSet(), // Display all user markers
              polylines: Set<Polyline>.of(polylines.values), // Optional: Display polylines if any
            ),
    );
  }
}
