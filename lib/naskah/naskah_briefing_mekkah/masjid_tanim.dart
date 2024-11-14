import 'package:flutter/material.dart';

class MasjidTanim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Tan`im (Miqat Aisyah)")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Kita berada di Masjid Tan’im, yang juga dikenal sebagai Miqat Aisyah. Masjid ini menjadi tempat miqat bagi jamaah yang ingin memulai ihram umrah mereka. Di sinilah Aisyah رضي الله عنها, istri Rasulullah ﷺ, memulai ihram umrahnya atas perintah Rasulullah ﷺ."),
          _buildBulletPoint("Masjid ini mengingatkan kita pada pentingnya kesucian dan niat dalam beribadah. Setiap ibadah harus dimulai dengan niat yang ikhlas. Dari sini, jamaah bisa memulai ihram mereka dengan niat yang suci dan bersiap memasuki rangkaian ibadah umrah."),
          _buildBulletPoint("Mari kita jaga kesucian niat kita dan memohon kepada Allah agar setiap langkah yang kita tempuh dalam ibadah diterima oleh-Nya."),
          _buildSubSection("Wassalamu’alaikum warahmatullahi wabarakatuh."),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}