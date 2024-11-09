import 'package:flutter/material.dart';

class DoaDzikirSaatBeradaDishafaDanMarwahKetikaMelaksanakanSai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa di Shafa dan Marwah'),
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
              'اللهُ أَكْبَرُ , اللهُ أَكْبَرُ, اللهُ أَكْبَرُ ... لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيْكَ لَهُ, لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِي وَ يُمِيْتُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرٌ. لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ, أَنْجَزَ وَعْدَهُ, وَ نَصَرَ عَبْدَهُ, وَهَزَمَ الْأَحْزَابَ وَحْدَهُ',
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
              'Allahu Akbar, Allahu Akbar, Allahu Akbar... Laa ilaaha illallaahu wahdahu laa syariika lahu, lahul-mulku walahul-hamdu, yuhyii wa yumiitu wa huwa ‘alaa kulli syai’in qadiir. Laa ilaaha illallaahu wahdah, anjaza wa’dah, wa nashara ‘abdah, wa hazamal-ahzaaba wahdah',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
