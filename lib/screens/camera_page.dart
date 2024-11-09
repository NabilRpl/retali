import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';

void main() {
  runApp(MyApp());
}

// MyApp class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Example',
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
  Uint8List? _imageBytes1;
  Uint8List? _imageBytes2;

  final picker = ImagePicker();

  Future<void> _pickImage(int containerNumber) async {
    // Menampilkan pilihan sumber gambar
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
                  Navigator.pop(context); // Tutup modal
                  _setImage(pickedFile, containerNumber);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Pilih dari Galeri'),
                onTap: () async {
                  final pickedFile = await picker.pickImage(source: ImageSource.gallery);
                  Navigator.pop(context); // Tutup modal
                  _setImage(pickedFile, containerNumber);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _setImage(XFile? pickedFile, int containerNumber) async {
    if (pickedFile != null) {
      final bytes = await pickedFile.readAsBytes();
      setState(() {
        if (containerNumber == 1) {
          _imageBytes1 = bytes;
        } else {
          _imageBytes2 = bytes;
        }
      });
    }
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
            // Kartu pertama untuk upload foto
            buildUploadCard('Opsi untuk File 1', Colors.white, _imageBytes1, () => _pickImage(1)),
            SizedBox(height: 20),

            // Kartu kedua untuk upload foto
            buildUploadCard('Opsi untuk File 2', Colors.grey[200]!, _imageBytes2, () => _pickImage(2)),
            SizedBox(height: 20),

            // Buttons at the bottom
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Action for "Kirim"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Text('Kirim'),
                ),
                TextButton(
                  onPressed: () {
                    // Action for "Kosongkan formulir"
                    setState(() {
                      _imageBytes1 = null;
                      _imageBytes2 = null;
                    });
                  },
                  child: Text(
                    'Kosongkan formulir',
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to build the upload card
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

            // Menampilkan gambar yang diunggah
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

            // Tombol upload
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