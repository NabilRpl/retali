import 'package:flutter/material.dart';

class DoaNiatIhramScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Niat Ihram'),
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
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'لَبَّيْكَ اللَّهُمَّ عُمْرَةً\nاللهم فَمَحِلَّيْ حَيْثُ حَبَسْتَنِيْ',
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
              'Labbaika Allahumma \'Umratan\nAllahumma famahillay haitsuh habastani',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}