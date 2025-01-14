import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:qr_code/naskah/naskah_page.dart';

class NaskahScreenMekkah extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/banner_naskah.jpg',
    'assets/images/banner_naskah.jpg',
    'assets/images/banner_naskah.jpg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.02),
          CarouselSlider(
            options: CarouselOptions(
              height: screenHeight * 0.25, // 30% of screen height
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0, // Full width for each image
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
          SizedBox(height: screenHeight * 0.02), // Added spacing here
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bandara Jeddah ke Mekkah',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: screenWidth * 0.06, // Responsive font size
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
                _buildDoaCard(context, 'Briefing Jabal Rahmah', '', JabalRahmah(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Arafah', '', Arafah(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Mina', '', Mina(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Muzdalifah', 'Dibacakan saat mabit (bermalam) di Muzdalifah', Muzdalifah(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Jabal Tsur', 'Dibacakan saat ziarah ke Jabal Tsur', JabalTsur(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Jabal Nur', 'Dibacakan saat ziarah ke Jabal Nur', JabalNur(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Masjidil Haram', 'Dibacakan saat berada di dalam atau sekitar Masjidil Haram', MasjidilHaram(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Clock Tower (Makkah Royal Clock Tower)', 'Dibacakan saat mengenalkan landmark di sekitar Masjidil Haram', ClockTower(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Masjid Jin', 'Dibacakan saat ziarah ke Masjid Jin', MasjidJin(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Masjid Al-Khoif di Mina', 'Dibacakan saat ziarah ke Masjid Al-Khoif', MasjidAlKhoif(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Masjid Tan’im (Miqat Aisyah)', 'Dibacakan saat berada di Masjid Tan’im', MasjidTanim(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Gua Hira di Jabal Nur', 'Dibacakan saat ziarah ke Jabal Nur', GuaHira(), screenWidth, screenHeight),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoaCard(BuildContext context, String title, String description, Widget targetScreen, double screenWidth, double screenHeight) {
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
        margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01), // Responsive margin
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05), // Responsive padding
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Vector.png',
                width: screenWidth * 0.1, // Responsive image size
                height: screenWidth * 0.1, // Responsive image size
              ),
              SizedBox(width: screenWidth * 0.04), // Responsive spacing
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: screenWidth * 0.045, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01), // Responsive spacing
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