import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:qr_code/ceklis/bandara_keMadinah.dart';
import 'package:qr_code/ceklis/bandara_kemekkah.dart';
import 'package:qr_code/ceklis/ceklis_persiapan_keberangkatan.dart';
import 'bandara_ketibaan.dart';
import 'bandara_transit_pergi.dart';
import 'bandara_transit_tiba.dart';
import 'hari_keberangkatan.dart';
import 'saat_diPesawat.dart';
// Import other screens as before

class CeklisScreen extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/banner_ceklis.jpg',
    'assets/images/banner_ceklis.jpg',
    'assets/images/banner_ceklis.jpg',
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
              viewportFraction: 1.0, // Use full width for each image
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
          SizedBox(height: 16), // Add spacing here
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tugas Ceklis',
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
                _buildDoaCard(context, 'Persiapan Keberangkatan',
                    'Belum ada text', CeklisPersiapanKeberangkatan()),
                _buildDoaCard(context, 'Hari H Keberangkatan', 'Belum ada text',
                    HariKeberangkatan()),
                _buildDoaCard(context, 'Saat di Pesawat', 'Belum ada text',
                    SaatDiPesawat()),
                _buildDoaCard(context, 'Bandara Transit (Tiba)',
                    'Belum ada text', BandaraTransitTiba()),
                _buildDoaCard(context, 'Bandara Transit (Pergi)',
                    'Belum ada text', BandaraTransitPergi()),
                _buildDoaCard(context, 'Bandara Ketibaan', 'Belum ada text',
                    BandaraKetibaan()),
                _buildDoaCard(context, 'Bandara ke Madinah', 'Belum ada text',
                    BandaraKeMadinah()),
                _buildDoaCard(context, 'Bandara ke Mekkah', 'Belum ada text',
                    BandaraKeMekkah()),
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
