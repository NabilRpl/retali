import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

// MyApp class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konten (Tugas Foto)',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: CameraPage(),
    );
  }
}

// Define the CameraPage class
class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  List<Uint8List?> _images = []; // Stores images for each box
  final picker = ImagePicker();
  final String accountId = "test_account"; // Replace with dynamic account ID as needed

  @override
  void initState() {
    super.initState();
    _loadImages(accountId);
  }

  Future<void> _loadImages(String accountId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? savedImages = prefs.getStringList('saved_images_$accountId'); // Use account-specific key
    if (savedImages != null) {
      setState(() {
        _images = savedImages.map((img) => img != 'null' ? base64Decode(img) : null).toList();
      });
    } else {
      // Clear images if no saved data for this account
      setState(() {
        _images = [];
      });
    }
  }

  Future<void> _saveImages(String accountId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> encodedImages = _images
        .map((img) => img != null ? base64Encode(img) : 'null')
        .toList();
    await prefs.setStringList('saved_images_$accountId', encodedImages); // Use account-specific key
  }

  Future<void> _pickImage(int index) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Ambil Foto dari Kamera'),
                onTap: () async {
                  final pickedFile = await picker.pickImage(source: ImageSource.camera);
                  Navigator.pop(context); // Close modal
                  _setImage(pickedFile, index);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Pilih dari Galeri'),
                onTap: () async {
                  final pickedFile = await picker.pickImage(source: ImageSource.gallery);
                  Navigator.pop(context); // Close modal
                  _setImage(pickedFile, index);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _setImage(XFile? pickedFile, int index) async {
    if (pickedFile != null) {
      final bytes = await pickedFile.readAsBytes();
      setState(() {
        if (index >= _images.length) _images.add(null);
        _images[index] = bytes;
      });
      _saveImages(accountId);
    }
  }

  void _addNewBox() {
    setState(() {
      _images.add(null); // Add a new box without an image
    });
    _saveImages(accountId);
  }

  void _clearImages(String accountId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('saved_images_$accountId');
    setState(() {
      _images.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Example'),
      ),
      body: Container(
        color: Colors.purple[50],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _images.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      buildUploadCard(
                        'Opsi untuk File ${index + 1}',
                        Colors.white,
                        _images[index],
                        () => _pickImage(index),
                      ),
                      SizedBox(height: 20),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: _addNewBox,
                  backgroundColor: Colors.purple,
                  child: Icon(Icons.add, color: Colors.white),
                  tooltip: 'Tambah Box',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUploadCard(String title, Color backgroundColor, Uint8List? imageBytes, VoidCallback onUploadPressed) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Upload 1 file yang didukung. Maks 10 MB.',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10),
            if (imageBytes != null)
              Image.memory(
                imageBytes,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              )
            else
              Container(
                height: 100,
                width: 100,
                color: Colors.grey[300],
                child: Icon(Icons.image, color: Colors.grey),
              ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: onUploadPressed,
              icon: Icon(Icons.upload_file, color: Colors.blue),
              label: Text(
                'Tambahkan file',
                style: TextStyle(color: Colors.blue),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: backgroundColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
