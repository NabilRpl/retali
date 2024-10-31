import 'package:flutter/material.dart';
import '../models/agenda.dart';

class AgendaDetailPage extends StatelessWidget {
  final Agenda agenda;

  AgendaDetailPage({required this.agenda}); // Terima agenda sebagai parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Agenda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              agenda.kegiatan,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              agenda.deskripsi ?? 'Tidak ada deskripsi',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 16),
            // Anda bisa menambahkan lebih banyak informasi agenda di sini
          ],
        ),
      ),
    );
  }
}
