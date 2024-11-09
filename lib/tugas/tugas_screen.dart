import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'keberangkatan.dart';
import 'kepulangan.dart';
import 'perjalanan.dart';
import 'tanggung_jawab.dart';


class TugasScreen extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/banner_tugas.jpg',
    'assets/images/banner_tugas.jpg',
    'assets/images/banner_tugas.jpg',
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
                  'Tugas',
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
                _buildDoaCard(context, 'Definisi dan Tanggung Jawab',
                    'Belum ada text', TanggungJawab()),
                _buildDoaCard(context, 'Tugas Sebelum Keberangkatan',
                    'Belum ada text', Keberangkatan()),
                _buildDoaCard(context, 'Tugas Selama Perjalanan',
                    'Belum ada text', Perjalanan()),
                _buildDoaCard(context, 'Tugas Saat Kepulangan',
                    'Belum ada text', Kepulangan()),
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
