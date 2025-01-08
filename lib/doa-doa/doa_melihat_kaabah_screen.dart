import 'package:flutter/material.dart';

class DoaMelihatKaabahScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa Saat Melihat Ka\'bah'),
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Doa Saat Melihat Ka\'bah',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              'Arab:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'اللَّهُمَّ أَنْتَ السَّلَامُ ...',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 28), // Ukuran lebih besar
                textDirection: TextDirection.rtl, // Teks berarah kanan
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Latin:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Allahumma zid haazal baita ...',
              style: TextStyle(fontSize: 18), // Ukuran lebih besar
            ),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}