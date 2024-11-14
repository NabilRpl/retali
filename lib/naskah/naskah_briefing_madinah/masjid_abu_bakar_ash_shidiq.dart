import 'package:flutter/material.dart';

class MasjidAbuBakarAshShidiq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Abu Bakar Ash Shiddiq")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Sekarang kita berada di depan Masjid Abu Bakar Ash-Shiddiq رضي الله عنه, sahabat Nabi yang paling setia dan orang pertama yang beriman kepada beliau. Masjid ini berada di dekat Masjid Nabawi, dan tetap berdiri sebagai simbol ketulusan Abu Bakar dalam membela Islam."),
          _buildBulletPoint("Abu Bakar رضي الله عنه tidak hanya membenarkan Nabi ﷺ dalam peristiwa Isra' Mi'raj tanpa ragu, tetapi juga rela berkorban dengan seluruh hartanya di jalan Allah. Beliau menjadi khalifah pertama setelah wafatnya Rasulullah ﷺ dan berhasil menjaga keutuhan umat meskipun banyak ujian yang dihadapi."),
          _buildBulletPoint("Bangunan masjid ini yang sederhana seakan mencerminkan kepribadian Abu Bakar رضي الله عنه yang rendah hati dan penuh cinta kepada Islam. Di tempat ini, mari kita ingat kesetiaan dan kecintaan Abu Bakar رضي الله عنه kepada Nabi ﷺ, dan mari kita memohon agar kita juga diberi keimanan yang kuat."),
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
