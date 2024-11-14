import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:qr_code/naskah/naskah_briefing_madinah/makam_baqi.dart';

import 'gunung_uhud.dart';
import 'makam_syuhada_uhud.dart';
import 'masjid_abu_bakar_ash_shidiq.dart';
import 'masjid_al_ghamamah.dart';
import 'masjid_ali_bin_abi_thalib.dart';
import 'masjid_nabawi.dart';
import 'masjid_umar_bin_khatab.dart';
import 'pengenalan_lingkungan_masjid.dart';
import 'raudhah_asy_syarifah.dart';
import 'saqifah_bani_saidah.dart';

class NaskahScreenMadinah extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/banner_naskah.jpg',
    'assets/images/banner_naskah.jpg',
    'assets/images/banner_naskah.jpg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              height: 250.0,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0, // Full width for each image
            ),
            items: carouselImages.map((imagePath) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFE6E0F8),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20), // Added spacing here
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bandara Jeddah ke Madinah',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 24,
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
                _buildDoaCard(context, 'Briefing Masjid Quba',
                    'Dibacakan Saat City Tour Madinah ke Masjid Quba', MasjidQuba()),
                _buildDoaCard(context, 'Briefing Masjid Quba',
                    'Dibaca ketika Ziarah Makam Baqi', MakamBaqi()),
                _buildDoaCard(context, 'Briefing Masjid Ali bin Abi Thalib',
                    'Dibaca saat pengenalan Lingkungan Masjid', MasjidAliBinAbiThalib()),
                _buildDoaCard(context, 'Briefing Masjid Umar Bin Khatab',
                    'Dibaca saat pengenalan Lingkungan Masjid', MasjidUmarBinKhatab()),
                _buildDoaCard(context, 'Briefing Masjid Abu Bakar Ash Shiddiq',
                    'Dibaca saat pengenalan Lingkungan Masjid', MasjidAbuBakarAshShidiq()),
                _buildDoaCard(context, 'Briefing Gunung Uhud',
                    'Dibaca saat City Tour Madinah', GunungUhud()),
                _buildDoaCard(context, 'Briefing Makam Syuhada Uhud',
                    'Dibaca saat City Tour Madinah', MakamSyuhadaUhud()),
                _buildDoaCard(context, 'Briefing Saqifah Bani Saidah',
                    'Dibaca saat di Raudhah', SaqifahBaniSaidah()),
                _buildDoaCard(context, 'Briefing Raudhah Asy Syarifah',
                    'Dibaca saat City Tour Madinah', RaudhahAsySyarifah()),
                _buildDoaCard(context, 'Briefing Bukit Pemanah',
                    'Dibaca saat City Tour Madinah', RaudhahAsySyarifah()),
                _buildDoaCard(context, 'Briefing Masjid Al Ghamamah',
                    'Dibaca saat pengenalan Lingkungan Masjid', MasjidAlGhamamah()),
                _buildDoaCard(context, 'Briefing Masjid Nabawi',
                    'Dibaca saat pengenalan Lingkungan Masjid', MasjidNabawi()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoaCard(BuildContext context, String title, String description,
      Widget targetScreen) {
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
                width: 40,
                height: 40,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(description, style: TextStyle(fontSize: 16)),
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
