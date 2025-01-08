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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.02),
          CarouselSlider(
            options: CarouselOptions(
              height: screenHeight * 0.25,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
            ),
            items: carouselImages.map((imagePath) {
              return Container(
                width: screenWidth,
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
          SizedBox(height: screenHeight * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tugas',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: screenWidth * 0.08,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(color: Colors.purple, thickness: 2),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(screenWidth * 0.05),
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
        margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Vector.png',
                width: screenWidth * 0.1,
                height: screenWidth * 0.1,
              ),
              SizedBox(width: screenWidth * 0.04),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
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
