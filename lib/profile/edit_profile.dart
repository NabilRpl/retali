import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:qr_code/services/logout.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('Token');
    final url = Uri.parse('http://192.168.0.100:8000/api/user');
    final response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      setState(() {
        _nameController.text = jsonData['name'];
        _emailController.text = jsonData['email'];
        _phoneController.text = jsonData['phone'];
        _locationController.text = jsonData['location'] ?? '';
      });
    } else if (response.statusCode == 401) {
      // Token expired, navigate to login page
      await logout(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Gagal mengambil data user')),
      );
    }
  }

  // Fungsi untuk mengirim data yang diupdate ke server menggunakan metode PUT
  Future<void> _saveUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('Token');
    final url = Uri.parse('http://192.168.0.100:8000/api/user');
    final response = await http.put(
      url,
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode({
        'name': _nameController.text,
        'email': _emailController.text,
        'phone': _phoneController.text,
        'location': _locationController.text,
      }),
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Data berhasil diperbarui')),
      );
      Navigator.pop(context, true); // Kembali setelah menyimpan
    } else if (response.statusCode == 401) {
      // Token expired, navigate to login page
      await logout(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Gagal memperbarui data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _locationController,
              decoration: const InputDecoration(
                labelText: 'Location',
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed:
                  _saveUserData, // Memanggil fungsi _saveUserData saat ditekan
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _locationController.dispose();
    super.dispose();
  }
}
