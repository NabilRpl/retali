import 'package:flutter/material.dart';

class DoaMasukMasjidilHaramScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa Masuk Masjidil Haram'),
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
        ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Doa Masuk Masjidil Haram',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
             Text(
              'Arab:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'أَعُوْذُ بِاللهِ الْعَظِيْمِ وَبِوَجْهِهِ الْكَرِيْمِ وَسُلْطَانِهِ الْقَدِيْمِ مِنَ الشَّيْطَانِ الرَّجِيْمِ, بِسْمِ اللهِ وَالصَّلَاةُ وَالسَّلَامُ عَلَى رَسُوْلِ اللهِ, اَللَّهُمَّ افْتَحْ لِيْ أَبْوَابَ رَحْمَتِكَ',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 28), // Ukuran lebih besar
              textDirection: TextDirection.rtl, // Teks berarah kanan
            ),
             Text(
              'Latin:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Auudzu billaahi al-aziimi wa biwajhihi al-kariimi wa sulthaanihi al-qadiimi minasy-syaithaani ar-rajiim, bismillaahi was-shalaatu was-salaamu \'ala rasuulillaah, Allahummaftah lii abwaaba rahmatika',
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}