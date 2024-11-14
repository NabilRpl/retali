import 'package:flutter/material.dart';

class BuktiPemanah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Naskah Pemanah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Hari ini kita berada di depan salah satu titik penting dari Perang Uhud, yaitu Bukit Pemanah, yang memiliki peranan strategis dalam sejarah Islam. Di sinilah Rasulullah ﷺ menempatkan para pemanah yang dipimpin oleh Abdullah bin Jubair رضي الله عنه, dengan pesan agar mereka tidak meninggalkan posisi, apapun yang terjadi."),
          _buildBulletPoint("Bukit ini mungkin tampak sederhana sekarang, tetapi dulunya, bukit ini menjadi benteng pertahanan umat Islam. Namun, sebagian pemanah turun sebelum perang usai, melihat peluang untuk mengambil harta rampasan. Akibatnya, pasukan Quraisy yang dipimpin Khalid bin Walid رضي الله عنه berhasil menyerang balik, mengakibatkan umat Islam terluka parah dan mengalami kekalahan."),
          _buildBulletPoint("Peristiwa di Bukit Pemanah ini menjadi pelajaran besar bagi kita semua akan pentingnya mematuhi perintah Allah dan Rasul-Nya. Allah berfirman, “Taatilah Allah dan Rasul-Nya jika kamu benar-benar beriman.” (QS. Al-Anfal: 1). Mari kita ingat selalu untuk menaati perintah Allah tanpa ragu dan tidak tergoda oleh kenikmatan dunia yang hanya sementara."),
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
