import 'package:flutter/material.dart';

class BimbinganIbadahScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bimbingan Ibadah Jamaah Retail"),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Header Image
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bimbingan_ibadah.jpeg'), // Replace with your header image
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),

          // List of Guidance Items
          Expanded(
            child: ListView(
              children: [
                GuidanceItem(
                  title: 'Bimbingan Ibadah Umrah',
                  imagePath: 'assets/images/bimbingan_ibadah.jpeg', // Replace with your image
                  onTap: () {
                    // Handle navigation or functionality here
                  },
                ),
                GuidanceItem(
                  title: 'Bimbingan Ibadah di Ka\'bah',
                  imagePath: 'assets/images/bimbingan_ibadah.jpeg', // Replace with your image
                  onTap: () {
                    // Handle navigation or functionality here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GuidanceItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const GuidanceItem({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Image.asset(imagePath, width: 60), // Replace with your image path
        title: Text(title),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}
