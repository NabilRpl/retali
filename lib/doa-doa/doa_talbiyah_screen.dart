import 'package:flutter/material.dart';

class DoaTalbiyahScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bacaan Talbiyah'),
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
              'لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ, لَبَّيْكَ لَا شَرِيْكَ لَكَ لَبَّيْكَ, إِنَّ الْحَمْدَ وَالنِّعْمَةَ لَكَ وَالْمُلْكُ لَا شَرِيْكَ لَكَ\nلَبَّيْكَ إِلَهَ الْحَقِّ\nلَبَّيْكَ ذَا الْمَعَارِجِ .. لَبَّيْكَ ذَا الْفَوَاضِلِ',
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
              'Labbaika Allahumma labbaik, labbaika laa syariika laka labbaik, innal hamda wan-ni\'mata laka wal-mulk, laa syariika lak\nLabbaika ilaaha al-haqqi\nLabbaika dzal ma\'ariij, labbaika dzal fawadhili',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
