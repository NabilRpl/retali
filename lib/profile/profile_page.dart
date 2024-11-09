import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'edit_profile.dart';
import 'photo_konten.dart';

class ProfilePage extends StatefulWidget {
  final File? imageFile;

  const ProfilePage({Key? key, this.imageFile}) : super(key: key);
  
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? _imagePath;

  @override
  void initState() {
    super.initState();
    _loadImagePath(); // Load saved image path on initialization
  }

  // Method to pick an image and save its path
  Future<void> _selectImage() async {
  final ImagePicker picker = ImagePicker();
  final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
    setState(() {
      _imagePath = pickedFile.path;
    });
    _saveImagePath(_imagePath!);

    // Navigate to the new page with image and content
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PhotoKonten(imagePath: _imagePath!),
      ),
    );
  }
}

  // Save image path to shared preferences
  Future<void> _saveImagePath(String path) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('profile_image_path', path);
  }

  // Load image path from shared preferences
  Future<void> _loadImagePath() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _imagePath = prefs.getString('profile_image_path');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: _selectImage, // Opens image picker
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.grey.shade300,
                      width: 1.0,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: _imagePath == null
                        ? Image.asset(
                            'assets/images/al-madinah.jpg', // Default image
                            height: 150.0,
                            width: 150.0,
                            fit: BoxFit.cover,
                          )
                        : Image.file(
                            File(_imagePath!), // Display saved image
                            height: 150.0,
                            width: 150.0,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Denko Neva',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32.0),
              const ProfileInfoTile(
                icon: Icons.phone,
                label: 'Phone Number',
                value: '+971 52 657-0686',
              ),
              const SizedBox(height: 16.0),
              const ProfileInfoTile(
                icon: Icons.mail,
                label: 'Email',
                value: 'che.nevy@gmail.com',
              ),
              const SizedBox(height: 16.0),
              const ProfileInfoTile(
                icon: Icons.location_on,
                label: 'Location',
                value: 'UAE. Dubai',
              ),
              const SizedBox(height: 16.0),
              const ProfileInfoTile(
                icon: Icons.access_time,
                label: 'Time Zone',
                value: 'Dubai (GMT+4)',
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 48.0, vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Icon(Icons.edit, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ProfileInfoTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.purple),
        const SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
