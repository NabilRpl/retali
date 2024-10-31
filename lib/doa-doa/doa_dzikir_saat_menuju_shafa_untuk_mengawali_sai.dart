import 'package:flutter/material.dart';

class DoaDzikirSaatMenujuShafaUntukMengawaliSai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa Saat Menuju Shafa untuk Mengawali Sa’i'),
        backgroundColor: Colors.purple,
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
              'إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللهِ .... أَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 28), // Ukuran lebih besar
              textDirection: TextDirection.rtl, // Teks berarah kanan
            ),
            SizedBox(height: 10),
            Text(
              'Latin:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Innas-shafaa wal-marwata min sya’aairillah... Abda’u bimaa bada’allahu bihi',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
