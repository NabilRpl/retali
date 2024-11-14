import 'package:flutter/material.dart';

class MasjidAlGhamamah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Al Ghamamah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Saat ini kita berada di depan Masjid Al Ghamamah, masjid bersejarah yang juga dikenal dengan nama Masjid Awan. Masjid ini dibangun di tempat Nabi ﷺ melaksanakan shalat istisqa, shalat meminta hujan, ketika penduduk Madinah mengalami kekeringan."),
          _buildBulletPoint("Saat Nabi ﷺ mengangkat tangan beliau untuk berdoa, awan tiba-tiba muncul di atas beliau dan tak lama kemudian hujan pun turun, menghidupkan kembali bumi yang gersang. Nama “Al Ghamamah” berarti “awan,” sebagai pengingat akan mukjizat doa Rasulullah ﷺ yang dikabulkan oleh Allah."),
          _buildBulletPoint("Masjid ini berdiri dengan arsitektur khas, berbentuk persegi dengan kubah indah yang menandai kekuatan doa dan rahmat Allah. Saat kita berada di sini, mari kita panjatkan doa-doa kita kepada Allah, memohon keberkahan, kelancaran, serta keselamatan dalam perjalanan ini."),
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
