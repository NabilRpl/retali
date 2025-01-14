import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:qr_code/naskah/naskah_page.dart';

class NaskahScreenMadinah extends StatelessWidget {
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
          SizedBox(height: screenHeight * 0.02),
          CarouselSlider(
            options: CarouselOptions(
              height: screenHeight * 0.25,
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
                  'Bandara Jeddah ke Madinah',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: screenWidth * 0.06,
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
                _buildDoaCard(context, 'Briefing Masjid Quba',
                    'Dibacakan Saat City Tour Madinah ke Masjid Quba', MasjidQuba(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Masjid Quba',
                    'Dibaca ketika Ziarah Makam Baqi', MakamBaqi(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Masjid Ali bin Abi Thalib',
                    'Dibaca saat pengenalan Lingkungan Masjid', MasjidAliBinAbiThalib(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Masjid Umar Bin Khatab',
                    'Dibaca saat pengenalan Lingkungan Masjid', MasjidUmarBinKhatab(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Masjid Abu Bakar Ash Shiddiq',
                    'Dibaca saat pengenalan Lingkungan Masjid', MasjidAbuBakarAshShidiq(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Gunung Uhud',
                    'Dibaca saat City Tour Madinah', GunungUhud(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Makam Syuhada Uhud',
                    'Dibaca saat City Tour Madinah', MakamSyuhadaUhud(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Saqifah Bani Saidah',
                    'Dibaca saat di Raudhah', SaqifahBaniSaidah(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Raudhah Asy Syarifah',
                    'Dibaca saat City Tour Madinah', RaudhahAsySyarifah(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Bukit Pemanah',
                    'Dibaca saat City Tour Madinah', BuktiPemanah(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Lingkungan Masjid',
                    'Dibaca saat City Tour Madinah', PengenalanLingkunganMasjid(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Masjid Al Ghamamah',
                    'Dibaca saat pengenalan Lingkungan Masjid', MasjidAlGhamamah(), screenWidth, screenHeight),
                _buildDoaCard(context, 'Briefing Masjid Nabawi',
                    'Dibaca saat pengenalan Lingkungan Masjid', MasjidNabawi(), screenWidth, screenHeight),
              ],
            ),
          ),
        ],
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