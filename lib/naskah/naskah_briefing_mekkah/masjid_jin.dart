import 'package:flutter/material.dart';

class MasjidJin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Jin")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita berada di Masjid Jin, sebuah tempat yang menjadi saksi interaksi Rasulullah ﷺ dengan sekelompok jin yang mendengar beliau membaca Al-Quran. Para jin tersebut terkesan dan memeluk Islam, sehingga Masjid ini dinamakan Masjid."),
          _buildBulletPoint("Masjid Jin mengingatkan kita pada luasnya dakwah Islam yang meliputi semua makhluk. Allah berfirman, “Dan Aku tidak menciptakan jin dan manusia melainkan supaya mereka mengabdi kepada-Ku.” (QS. Adz-Dzariyat: 56). Peristiwa ini juga menunjukkan bagaimana Rasulullah ﷺ diutus untuk seluruh alam, termasuk kaum jin."),
          _buildBulletPoint("Semoga kita diingatkan untuk selalu memperbanyak bacaan Al-Quran dan memohon perlindungan kepada Allah dari segala kejahatan yang kasat mata maupun tidak. Semoga kehadiran kita di sini semakin mempertebal iman kita kepada Allah."),
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