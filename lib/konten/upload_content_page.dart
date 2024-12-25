import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:qr_code/services/logout.dart';
import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

class UploadContentPage extends StatefulWidget {
  final int tugasKontenId;

  UploadContentPage({required this.tugasKontenId});

  @override
  _UploadContentPageState createState() => _UploadContentPageState();
}

class _UploadContentPageState extends State<UploadContentPage> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> photos = [];
  XFile? video;
  bool isLoading = false;
  String tugasDeskripsi = '';  // Variabel untuk menyimpan deskripsi tugas

  @override
  void initState() {
    super.initState();
    fetchTugasDeskripsi(); // Memanggil fungsi untuk mengambil deskripsi tugas
  }

  // Fungsi untuk mengambil deskripsi tugas dari API
  Future<void> fetchTugasDeskripsi() async {
    try {
      var response = await http.get(
        Uri.parse('http://192.168.18.121:1810/api/tugaskonten/${widget.tugasKontenId}'),
        headers: {
          'Accept': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseJson = json.decode(response.body);
        setState(() {
          tugasDeskripsi = responseJson['deskripsi'] ?? '';
        });
      } else {
        print('Failed to fetch task description: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching task description: $e');
    }
  }

  Future<void> pickPhotos() async {
    try {
      final List<XFile>? pickedPhotos = await _picker.pickMultiImage();
      if (pickedPhotos != null) {
        setState(() {
          photos.addAll(pickedPhotos);
        });
      }
    } catch (e) {
      print('Error picking photos: $e');
    }
  }

  Future<void> pickVideo() async {
    try {
      final XFile? pickedVideo =
          await _picker.pickVideo(source: ImageSource.gallery);
      if (pickedVideo != null) {
        setState(() {
          video = pickedVideo;
        });
      }
    } catch (e) {
      print('Error picking video: $e');
    }
  }

  Future<void> uploadContent() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('Token');
    if (photos.isEmpty && video == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select at least one photo or video')),
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse('http://192.168.18.121:1810/api/userkonten'),
      );

      if (token != null) {
        request.headers['Authorization'] = 'Bearer $token';
      }

      request.headers['Accept'] = 'application/json';

      request.fields['tugaskonten_id'] = widget.tugasKontenId.toString();

      // Add photos
      for (var i = 0; i < photos.length; i++) {
        request.files.add(
          await http.MultipartFile.fromPath('foto[]', photos[i].path),
        );
      }

      // Add video if exists
      if (video != null) {
        request.files.add(
          await http.MultipartFile.fromPath('video', video!.path),
        );
      }

      var response = await request.send();
      final responseBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Content uploaded successfully')),
        );
        setState(() {
          photos.clear();
          video = null;
        });
      } else if (response.statusCode == 401) {
        await logout(context);
      } else {
        print('Server error: ${response.statusCode}, Body: $responseBody');

        // Parse JSON response body
        Map<String, dynamic> responseJson = json.decode(responseBody);

        if (responseJson.containsKey('error')) {
          Map<String, dynamic> errorMessages = responseJson['error'];

          String errorMessage = '';
          errorMessages.forEach((key, value) {
            if (value is List) {
              value.forEach((msg) {
                errorMessage += '$msg\n';
              });
            }
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to upload content. \n$errorMessage')),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to upload content. ${response.reasonPhrase}')),
          );
        }
      }
    } catch (e) {
      print('Error uploading content: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Content'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: pickPhotos,
              icon: Icon(Icons.photo),
              label: Text('Select Photos'),
            ),
            Wrap(
              spacing: 8.0,
              children: photos.map((photo) {
                return Image.file(
                  File(photo.path),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            ElevatedButton.icon(
              onPressed: pickVideo,
              icon: Icon(Icons.videocam),
              label: Text('Select Video'),
            ),
            if (video != null)
              Text('Video selected: ${video!.name}', style: TextStyle(color: Colors.blue)),
            if (tugasDeskripsi.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Deskripsi Tugas: $tugasDeskripsi',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            Spacer(),
            ElevatedButton(
              onPressed: isLoading ? null : uploadContent,
              child: isLoading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text('Upload Content'),
            ),
          ],
        ),
      ),
    );
  }
}
