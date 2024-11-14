import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class NotifScreen extends StatefulWidget {
  const NotifScreen({super.key});

  @override
  State<NotifScreen> createState() => _NotifScreenState();
}

class _NotifScreenState extends State<NotifScreen> {
  List<dynamic> notifications = []; // Menyimpan daftar notifikasi

  @override
  void initState() {
    super.initState();
    // Panggil fungsi untuk mengambil notifikasi dari API
    fetchNotifications();
  }

  // Fungsi untuk mengambil notifikasi dari API
  Future<void> fetchNotifications() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('Token');
    final response = await http.get(
      Uri.parse('http://192.168.0.104:1810/api/notifications'),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    );

    if (response.statusCode == 200) {
      // Jika request berhasil, parse data JSON
      setState(() {
        notifications = jsonDecode(response.body);
      });
    } else {
      // Jika gagal mengambil data, tampilkan pesan error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to load notifications')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: notifications.isEmpty
          ? const Center(
              child:
                  CircularProgressIndicator()) // Loading spinner jika data kosong
          : ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                var notification = notifications[index];
                return ListTile(
                  title: Text(notification['title']),
                  subtitle: Text(notification['message']),
                  trailing: Icon(
                    notification['is_read']
                        ? Icons.check
                        : Icons.mark_email_read,
                    color: notification['is_read'] ? Colors.green : Colors.blue,
                  ),
                  onTap: () {
                    // Tindakan ketika notifikasi diklik (misalnya, tandai sebagai dibaca)
                    // Bisa ditambahkan logika untuk menandai sebagai dibaca atau membuka detail
                  },
                );
              },
            ),
    );
  }
}
