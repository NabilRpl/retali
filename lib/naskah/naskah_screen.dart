import 'package:flutter/material.dart';
import 'naskahmanasik.dart';
import 'brifingkeberangkatanscreen.dart';
import 'citytourmadinahscreen.dart';
import 'citytourmekkahscreen.dart';
import 'pengenalanlingkunganmasjidscreen.dart';

class NaskahScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pilihan Naskah'),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          _buildMenuButton(context, 'Naskah Brifing', Naskahbrifing(), screenWidth),
          _buildMenuButton(context, 'Naskah City Tour Madinah', NaskahMadinah(), screenWidth),
          _buildMenuButton(context, 'Naskah City Tour Mekkah', NaskahMekkah(), screenWidth),
          _buildMenuButton(context, 'Naskah Manasik', NaskahManasik(), screenWidth),
          _buildMenuButton(context, 'Pengenalan Lingkungan Masjid', NaskahPengenalanLingkunganMasjid(), screenWidth), 
        ],
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, Widget screen, double screenWidth) {
    final isLargeScreen = screenWidth > 600;
    final horizontalPadding = isLargeScreen ? 40.0 : 10.0; // Less padding for smaller screens
    final buttonWidth = isLargeScreen ? 0.7 * screenWidth : 0.9 * screenWidth; // More width for smaller screens

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: AnimatedContainer(
            width: buttonWidth, // Responsive button width
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(30), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(3, 5),
                ),
              ],
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}