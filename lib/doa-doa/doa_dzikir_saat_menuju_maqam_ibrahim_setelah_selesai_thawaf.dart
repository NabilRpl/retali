import 'package:flutter/material.dart';

class DoaDzikirSaatMenujuMaqamIbrahimSetelahSelesaiThawaf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa Menuju Maqam Ibrahim Setelah Thawaf'),
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
              'وَاتَّخِذُوْا مِنْ مَقَامِ إِبْرَاهِيْمَ مُصَلَّى',
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
              'Wattakhidzuu min maqaami ibraahiima mushallaa',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
