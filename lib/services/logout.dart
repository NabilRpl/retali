import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qr_code/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> logout(BuildContext context) async {
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('Token');

  await http.post(
    Uri.parse('http://192.168.1.83:8000/api/logout'),
    headers: {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    },
  );
  await prefs.remove('token');
  await prefs.remove('username');

  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
  );
}
