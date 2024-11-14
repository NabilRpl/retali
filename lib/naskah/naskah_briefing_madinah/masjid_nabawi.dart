import 'package:flutter/material.dart';

class MasjidNabawi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Nabawi")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita sekarang berada di Masjid Nabawi, masjid yang dibangun oleh Rasulullah ﷺ sendiri, yang juga menjadi tempat peristirahatan terakhir beliau bersama sahabat-sahabat tercinta, Abu Bakar dan Umar رضي الله عنهما. Inilah masjid yang memiliki keutamaan besar, di mana satu kali shalat di sini sama dengan seribu kali shalat di masjid lain, kecuali Masjidil Haram. (HR. Bukhari dan Muslim)."),
          _buildBulletPoint("Masjid Nabawi kini telah mengalami banyak perluasan yang megah, dengan payung-payung besar yang meneduhkan jamaah dan kubah hijau yang menjadi lambang keindahan kota Madinah. Arsitektur modern ini tak mengurangi nuansa ketenangan dan kekhusyukan, menjadikan setiap ibadah yang kita lakukan di sini penuh makna."),
          _buildBulletPoint("Di dalam Masjid Nabawi, kita dapat mendekat ke Raudhah, serta mengirimkan salam kita kepada Rasulullah ﷺ di makam beliau. Masjid ini bukan hanya sekadar tempat shalat, tetapi juga saksi bagi perjuangan dakwah Nabi ﷺ, tempat berkumpulnya para sahabat, dan pusat perkembangan peradaban Islam pertama."),
          _buildBulletPoint("Saat kita berada di Masjid Nabawi ini, mari kita resapi momen ini, panjatkan doa terbaik, dan kirimkan shalawat yang tulus kepada Rasulullah ﷺ. Semoga perjalanan kita ke Masjid Nabawi menjadi perjalanan yang diberkahi, menguatkan iman, dan menambah cinta kita kepada Rasulullah ﷺ dan Islam."),
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
