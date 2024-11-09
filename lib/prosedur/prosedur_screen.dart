import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'pages/HandlingJamaahDiBusSampaiHotelScreen.dart';
import 'pages/HandlingKeberangkatanScreen.dart';
import 'pages/HandlingKetibaanScreen.dart';
import 'pages/HandlingTibaDiIndonesiaScreen.dart';
import 'pages/KepulanganJamaahScreen.dart';
import 'pages/PengantaranJamaahKeRaudhahScreen.dart';
import 'pages/PenyambutanJamaahDiBandaraScreen.dart';
import 'pages/PersiapanDanPelaksanaanUmrohScreen.dart';
// Import other screens as before

class ProsedurScreen extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/banner_prosedur.jpg',
    'assets/images/banner_prosedur.jpg',
    'assets/images/banner_prosedur.jpg',
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
                  'Prosedur',
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
                _buildDoaCard(
                    context,
                    'Handling Keberangkatan',
                    'Belum ada text',
                    HandlingKeberangkatanScreen()),
                _buildDoaCard(
                    context,
                    'Handling Ketibaan',
                    'Belum ada text',
                    HandlingKetibaanScreen()),
                _buildDoaCard(
                    context,
                    'Handling tiba di Indonesia',
                    'Belum ada text',
                    HandlingTibaDiIndonesiaScreen()),
                _buildDoaCard(
                    context,
                    'Handling Jamaah di bus sampai hotel',
                    'Belum ada text', 
                    HandlingJamaahDiBusSampaiHotelScreen()),
                _buildDoaCard(
                    context,
                    'Kepulangan Jamaah',
                    'Belum ada text',
                    KepulanganJamaahScreen()),
                _buildDoaCard(
                    context,
                    'Pengantaran Jamaah ke Raudhah',
                    'Belum ada text',
                    PengantaranJamaahKeRaudhahScreen()), // Corrected capitalization
                _buildDoaCard(
                    context,
                    'Penyambutan Jamaah di Bandara',
                    'Belum ada text',
                    PenyambutanJamaahDiBandaraScreen()), // Corrected capitalization
                _buildDoaCard(
                    context,
                    'Persiapan dan Pelaksanaan Umroh',
                    'Belum ada text',
                    PersiapanDanPelaksanaanUmrohScreen()), // Corrected capitalization
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
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
