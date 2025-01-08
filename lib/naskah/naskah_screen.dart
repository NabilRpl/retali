import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'naskah_briefing_keberangkatan/keberangkatan.dart';
import 'naskah_briefing_madinah/naskah_screen_madinah.dart';
import 'naskah_briefing_manasik/grouping_manasik.dart';
import 'naskah_briefing_mekkah/naskah_screen_mekkah.dart';

class NaskahScreen extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/banner_naskah.jpg',
    'assets/images/banner_naskah.jpg',
    'assets/images/banner_naskah.jpg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.02), // Adjusted for responsiveness
          CarouselSlider(
            options: CarouselOptions(
              height: screenHeight * 0.25, // Set height based on screen height
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
          SizedBox(height: screenHeight * 0.02), // Added spacing for responsiveness
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Dynamic padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Naskah Briefing',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: screenWidth * 0.08, // Responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(color: Colors.purple, thickness: 2),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.01), // Added spacing for responsiveness
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(screenWidth * 0.05), // Dynamic padding
              children: [
                _buildDoaCard(context, 'Briefing Grouping Manasik', '', GroupingManasik()),
                _buildDoaCard(context, 'Briefing Saat Keberangkatan', '', Keberangkatan()),
                _buildDoaCard(context, 'Bandara Jeddah ke Madinah', '', NaskahScreenMadinah()),
                _buildDoaCard(context, 'Bandara Jeddah ke Mekkah', '', NaskahScreenMekkah()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoaCard(BuildContext context, String title, String description, Widget targetScreen) {
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
        margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01), // Dynamic margin
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05), // Dynamic padding
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Vector.png',
                width: screenWidth * 0.1, // Dynamic image size based on screen width
                height: screenWidth * 0.1,
              ),
              SizedBox(width: screenWidth * 0.04), // Responsive space between image and text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: screenWidth * 0.05, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01), // Dynamic spacing
                    Text(
                      description,
                      style: TextStyle(fontSize: screenWidth * 0.04), // Responsive font size
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
