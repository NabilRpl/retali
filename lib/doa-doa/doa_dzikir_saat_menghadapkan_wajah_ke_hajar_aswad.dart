import 'package:flutter/material.dart';

class DoaDzikirSaatMenghadapkanWajahKeHajarAswad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa Saat Menghadapkan Wajah ke Hajar Aswad'),
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Arab:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'بِسْمِ اللهِ .... اللهُ أَكْبَرُ',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 28), // Ukuran lebih besar
              textDirection: TextDirection.rtl, // Teks berarah kanan
            ),
            SizedBox(height: 20),
            Text(
              'Latin:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bismillah... Allahu Akbar',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
