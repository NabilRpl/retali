import 'package:flutter/material.dart';

class JabalTsur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Jabal Tsur")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Segala puji bagi Allah Azza wa Jalla yang telah memberi kita kesempatan mengunjungi Jabal Tsur. Shalawat dan salam kepada Nabi Muhammad ﷺ, yang perjuangannya selalu menginspirasi kita untuk tetap teguh dalam beriman."),
          _buildBulletPoint("Jabal Tsur adalah tempat bersejarah di mana Nabi Muhammad ﷺ dan sahabatnya, Abu Bakar Ash-Shiddiq رضي الله عنه, berlindung selama tiga hari dari pengejaran kaum Quraisy dalam peristiwa hijrah. Di gua kecil ini, meskipun dalam keadaan sulit, Rasulullah ﷺ tetap tawakkal, dan Allah pun mengirimkan laba-laba untuk menutup pintu gua sehingga mereka aman dari pengejaran."),
          _buildBulletPoint("Melihat Jabal Tsur yang menjulang tinggi ini mengingatkan kita pada ketabahan dan tawakkal kepada Allah dalam setiap ujian. Tempat ini mengajarkan kita untuk selalu bergantung pada Allah dalam menghadapi kesulitan."),
          _buildBulletPoint("Semoga kisah hijrah ini memberikan kekuatan kepada kita semua untuk bersabar dan bertawakkal, apapun tantangan yang kita hadapi."),
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