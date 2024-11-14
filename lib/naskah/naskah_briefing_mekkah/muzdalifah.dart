import 'package:flutter/material.dart';

class Muzdalifah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Muzdalifah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Segala puji bagi Allah Azza wa Jalla yang telah memberikan kita kesempatan untuk berada di Muzdalifah. Shalawat serta salam kita haturkan kepada Nabi Muhammad ﷺ, suri teladan kita dalam setiap ibadah."),
          _buildBulletPoint("Di Muzdalifah, kita bermalam setelah wukuf di Arafah, sebagaimana yang disunnahkan oleh Rasulullah ﷺ. Tempat ini memberi kita waktu untuk bermuhasabah dan mengumpulkan batu-batu kecil untuk pelontaran jumrah di Mina. Di sini kita diingatkan tentang ketenangan dan keikhlasan dalam menjalankan perintah Allah, sebagai bentuk persiapan mental dan spiritual sebelum melanjutkan ibadah di Mina."),
          _buildBulletPoint("Keheningan Muzdalifah mengajarkan kita untuk menenangkan hati dan berdoa dengan penuh pengharapan kepada Allah. Semoga Allah menerima doa dan amalan kita, serta mempermudah setiap urusan kita dalam ibadah ini."),
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
