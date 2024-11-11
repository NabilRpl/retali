import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qr_code/services/logout.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'edit_profile.dart';
import 'photo_konten.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProfilePage extends StatefulWidget {
  final File? imageFile;

  const ProfilePage({Key? key, this.imageFile}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? _imagePath;
  String? _name = '';
  String? _email = '';
  String? _phoneNumber = '';
  String? _location = '';

  @override
  void initState() {
    super.initState();
    _loadUserData();
    _loadImagePath(); // Load saved image path on initialization
  }

  // Method to pick an image and save its path
  Future<void> _selectImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

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

  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('Token');
    final url = Uri.parse('http://127.0.0.1:1810/api/user');
    final response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token'
      },
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      setState(() {
        _name = jsonData['name'];
        _email = jsonData['email'];
        _phoneNumber = jsonData['phone'];
        _location = jsonData['location'];
      });
    } else if (response.statusCode == 401) {
      // Token expired, navigate to login page
      await logout(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Gagal mengambil data user')),
      );
    }
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
              Text(
                _name ?? 'Loading...', // Display name or "Loading..."
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32.0),
              ProfileInfoTile(
                icon: Icons.phone,
                label: 'Phone Number',
                value: _phoneNumber ??
                    'Loading...', // Display phone number or "Loading..."
              ),
              const SizedBox(height: 16.0),
              ProfileInfoTile(
                icon: Icons.mail,
                label: 'Email',
                value: _email ?? 'Loading...', // Display email or "Loading..."
              ),
              const SizedBox(height: 16.0),
              ProfileInfoTile(
                icon: Icons.location_on,
                label: 'Location',
                value: _location ?? 'Loading...',
              ),
              const SizedBox(height: 16.0),
              const ProfileInfoTile(
                icon: Icons.access_time,
                label: 'Time Zone',
                value: 'Dubai (GMT+4)',
              ),
              const SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                      // Cek apakah result dari halaman EditProfile adalah true
                      if (result == true) {
                        _loadUserData(); // Refresh data jika ada perubahan
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
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
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      logout(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Icon(Icons.logout, color: Colors.white),
                      ],
                    ),
                  ),
                ],
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
