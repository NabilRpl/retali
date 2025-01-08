import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'ibadah_raudhah.dart';
import 'ibadah_umroh.dart';

class BimbinganIbadahScreen extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/bimbingan_ibadah.jpeg',
    'assets/images/bimbingan_ibadah.jpeg',
    'assets/images/bimbingan_ibadah.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;

          return Column(
            children: [
              SizedBox(height: screenHeight * 0.02), // Menyesuaikan margin atas
              CarouselSlider(
                options: CarouselOptions(
                  height: screenHeight * 0.25, // Menyesuaikan tinggi carousel
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0, // Lebar penuh untuk setiap gambar
                ),
                items: carouselImages.map((imagePath) {
                  return Container(
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Color(0xFFE6E0F8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: screenHeight * 0.02), // Menambahkan ruang antara carousel dan teks
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Menyesuaikan padding
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bimbingan Ibadah',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: screenWidth * 0.08, // Menyesuaikan ukuran font
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
                  padding: EdgeInsets.all(screenWidth * 0.05), // Menyesuaikan padding
                  children: [
                    _buildDoaCard(
                        context,
                        'Bimbingan Ibadah Umrah',
                        'Belum ada text', 
                        IbadahUmroh(),
                        screenWidth,
                        screenHeight),
                    _buildDoaCard(
                        context,
                        'Bimbingan Ibadah di Raudhah', 
                        'Belum ada text',
                        IbadahRaudhah(),
                        screenWidth,
                        screenHeight),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildDoaCard(BuildContext context, String title, String description,
      Widget targetScreen, double screenWidth, double screenHeight) {
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
        margin: EdgeInsets.symmetric(vertical: screenWidth * 0.02), // Menyesuaikan margin
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05), // Menyesuaikan padding
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Vector.png',
                width: screenWidth * 0.1, // Menyesuaikan ukuran gambar
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
                        fontSize: screenWidth * 0.05, // Menyesuaikan ukuran font
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      description,
                      style: TextStyle(fontSize: screenWidth * 0.04), // Menyesuaikan ukuran font
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