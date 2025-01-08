import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'doa_dzikir_antara_rukun_yamani_dan_hajar_aswad.dart';
import 'doa_dzikir_saat_berada_dishafa_dan_marwah_ketika_melaksanakan_sai.dart';
import 'doa_dzikir_saat_menghadapkan_wajah_ke_hajar_aswad.dart';
import 'doa_dzikir_saat_menuju_maqam_ibrahim_setelah_selesai_thawaf.dart';
import 'doa_dzikir_saat_menuju_shafa_untuk_mengawali_sai.dart';
import 'doa_ketika_melakukan_raml.dart';
import 'doa_masuk_masjidil_haram_screen.dart';
import 'doa_melihat_kaabah_screen.dart';
import 'doa_niat_ihram_screen.dart';
import 'doa_saat_kehendak_minum_air_zam_zam.dart';
import 'doa_talbiyah_screen.dart';

class DoaDoaScreen extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/banner_doa.jpg',
    'assets/images/banner_doa.jpg',
    'assets/images/banner_doa.jpg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              height: screenHeight * 0.25, // Use responsive height
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
            ),
            items: carouselImages.map((imagePath) {
              return Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF673AB7), Color(0xFF9575CD)],
                  ),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Doa-doa',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: screenWidth * 0.06, // Adjust text size based on screen width
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(color: Colors.purple, thickness: 2),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                _buildDoaCard(
                    context,
                    'Niat Ihram',
                    'Dibaca saat berangkat dari Miqot menuju Mekah',
                    DoaNiatIhramScreen()),
                _buildDoaCard(
                    context,
                    'Talbiyah',
                    'Dibaca sepanjang perjalanan dari Miqot menuju Masjidil Haram',
                    DoaTalbiyahScreen()),
                _buildDoaCard(
                    context,
                    'Do’a Masuk Masjidil Haram',
                    'Dibaca saat memasuki Masjidil Haram',
                    DoaMasukMasjidilHaramScreen()),
                _buildDoaCard(context, 'Do’a Saat Melihat Ka’bah',
                    'Dibaca saat melihat Ka\'bah', DoaMelihatKaabahScreen()),
                _buildDoaCard(
                    context,
                    'Dzikir Saat Menghadapkan Wajah ke Hajar Aswad',
                    'Dibaca saat menghadapkan wajah ke Hajar Aswad',
                    DoaDzikirSaatMenghadapkanWajahKeHajarAswad()),
                _buildDoaCard(
                    context,
                    'Dzikir Antara Rukun Yamani dan Hajar Aswad',
                    'Dibaca antara Rukun Yamani dan Hajar Aswad',
                    DoaDzikirAntaraRukunYamaniDanHajarAswad()),
                _buildDoaCard(
                    context,
                    'Dzikir Menuju Maqam Ibrahim Setelah Thawaf',
                    'Dibaca saat menuju Maqam Ibrahim',
                    DoaDzikirSaatMenujuMaqamIbrahimSetelahSelesaiThawaf()),
                _buildDoaCard(
                    context,
                    'Do’a Saat Minum Air Zamzam',
                    'Dibaca saat hendak minum air Zamzam',
                    DoaSaatKehendakMinumAirZamZam()),
                _buildDoaCard(
                    context,
                    'Dzikir Menuju Shafa untuk Memulai Sa’i',
                    'Dibaca saat menuju Shafa',
                    DoaDzikirSaatMenujuShafaUntukMengawaliSai()),
                _buildDoaCard(
                    context,
                    'Dzikir di Shafa dan Marwah Saat Sa’i',
                    'Dibaca saat berada di Shafa dan Marwah',
                    DoaDzikirSaatBeradaDishafaDanMarwahKetikaMelaksanakanSai()),
                _buildDoaCard(context, 'Do’a Saat Melakukan Raml',
                    'Dibaca saat melakukan raml', DoaKetikaMelakukanRaml()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoaCard(BuildContext context, String title, String description,
      Widget targetScreen) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => targetScreen,
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Vector.png',
                width: screenWidth * 0.1, // Use responsive width for the icon
                height: screenWidth * 0.1,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(fontSize: screenWidth * 0.04),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
