import 'package:flutter/material.dart';

class SaqifahBaniSaidah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Saqifah Bani Saidah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Kita berada di Saqifah Bani Saidah, tempat bersejarah di mana para sahabat berkumpul untuk bermusyawarah setelah wafatnya Nabi ﷺ. Di sinilah Abu Bakar Ash-Shiddiq رضي الله عنه akhirnya terpilih sebagai khalifah pertama umat Islam."),
          _buildBulletPoint("Tempat ini memiliki nilai sejarah penting, mengajarkan kita bahwa Islam menganjurkan musyawarah dalam menyelesaikan masalah. Allah berfirman, “Dan bermusyawarahlah dalam urusan itu.” (QS. Ali Imran: 159). Di sini, kita belajar betapa pentingnya persatuan dan saling mendengarkan."),
          _buildBulletPoint("Semoga kita dapat menerapkan pelajaran dari Saqifah Bani Saidah ini dalam kehidupan sehari-hari, dan senantiasa menjunjung tinggi nilai persatuan dan kebijaksanaan."),
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
