import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:qr_code/ceklis/bandara_keMadinah.dart';
import 'package:qr_code/ceklis/bandara_kemekkah.dart';
import 'package:qr_code/ceklis/ceklis_persiapan_keberangkatan.dart';
import 'package:qr_code/ceklis/ketibaan_dihotel_madinah.dart';
import 'package:qr_code/ceklis/persiapan_checkout_kemadinah.dart';
import 'package:qr_code/ceklis/persiapan_checkout_kemekkah.dart';
import 'bandara_ketibaan.dart';
import 'bandara_transit_pergi.dart';
import 'bandara_transit_tiba.dart';
import 'hari_keberangkatan.dart';
import 'ketibaan_dihotel_mekkah.dart';
import 'persiapan_checkout_kepulangan.dart';
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
          SizedBox(
              height: screenHeight * 0.02), // Added spacing for responsiveness
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05), // Dynamic padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tugas Ceklis',
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
          SizedBox(
              height: screenHeight * 0.01), // Added spacing for responsiveness
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(screenWidth * 0.05), // Dynamic padding
              children: [
                _buildDoaCard(context, 'Persiapan Keberangkatan', '',
                    CeklisPersiapanKeberangkatan()),
                _buildDoaCard(
                    context, 'Hari H Keberangkatan', '', HariKeberangkatan()),
                _buildDoaCard(context, 'Saat di Pesawat', '', SaatDiPesawat()),
                _buildDoaCard(context, 'Bandara Transit (Tiba)', '', BandaraTransitTiba()),
                _buildDoaCard(context, 'Bandara Transit (Pergi)', '', BandaraTransitPergi()),
                _buildDoaCard(context, 'Bandara Ketibaan', '', BandaraKetibaan()),
                _buildDoaCard(context, 'Bandara ke Madinah', '', BandaraKeMadinah()),
                _buildDoaCard(context, 'Bandara ke Mekkah', '', BandaraKeMekkah()),
                _buildDoaCard(context, 'Ketibaan di Hotel dan Check-In (Madinah)','', KetibaanDihotelMadinah()),
                _buildDoaCard(context,'Persiapan Checkout dan Transisi ke Madinah','',PersiapanCheckoutKemadinah()),
                _buildDoaCard(context,'Persiapan Checkout dan Transisi ke Mekkah','',PersiapanCheckoutKemekkah()),
                _buildDoaCard(context,'Ketibaan di Hotel dan Check-in (Mekkah)','',KetibaanDihotelMekkah()),
                _buildDoaCard(context,'Persiapan Checkout dan Transisi Kepulangan','',PersiapanCheckoutKepulangan()),
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
        margin: EdgeInsets.symmetric(
            vertical: screenHeight * 0.01), // Dynamic margin
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05), // Dynamic padding
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Vector.png',
                width: screenWidth *
                    0.1, // Dynamic image size based on screen width
                height: screenWidth * 0.1,
              ),
              SizedBox(
                  width: screenWidth *
                      0.04), // Responsive space between image and text
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
                      style: TextStyle(
                          fontSize: screenWidth * 0.04), // Responsive font size
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
