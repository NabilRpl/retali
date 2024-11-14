import 'package:flutter/material.dart';

class MasjidAlKhoif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Al-Khoif")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita berada di Jabal Nur, sebuah tempat penuh berkah di mana wahyu pertama diturunkan kepada Nabi Muhammad ﷺ. Shalawat serta salam kita sampaikan kepada beliau, yang selalu menjadi cahaya bagi umat ini."),
          _buildBulletPoint("Di puncak Jabal Nur, terdapat Gua Hira, tempat Nabi ﷺ menyendiri untuk beribadah sebelum masa kerasulannya. Di sinilah beliau menerima wahyu pertama dari Allah melalui Malaikat Jibril, 'Iqra'' (bacalah). Wahyu ini menandai awal dari dakwah Islam dan pentingnya ilmu bagi umat Islam."),
          _buildBulletPoint("Jabal Nur saat ini sering dikunjungi oleh para jamaah yang ingin menyaksikan langsung tempat mulainya dakwah Islam. Tempat ini mengajarkan kita untuk menghargai ilmu dan selalu dekat kepada Allah."),
          _buildBulletPoint("Semoga Allah menambahkan ilmu dan iman kepada kita semua di tempat yang mulia ini."),
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