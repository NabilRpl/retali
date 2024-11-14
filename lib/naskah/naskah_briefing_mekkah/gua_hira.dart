import 'package:flutter/material.dart';

class GuaHira extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Gua Hira di Jabal Nur")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita kini berada di Jabal Nur, tempat yang penuh sejarah bagi umat Islam. Di puncak gunung ini terdapat Gua Hira, di mana Nabi Muhammad ﷺ menerima wahyu pertama dari Allah melalui Malaikat Jibril."),
          _buildBulletPoint("Peristiwa wahyu pertama ini dimulai dengan kata “Iqra’” (bacalah), yang menandai dimulainya risalah kenabian. Dari sini, kita belajar tentang pentingnya ilmu dan membaca dalam Islam. Peristiwa ini mengingatkan kita bahwa ilmu merupakan fondasi bagi umat Islam dan harus dicari dengan sungguh-sungguh."),
          _buildBulletPoint("Gua Hira ini adalah tempat kecil, namun sejarahnya sangat besar. Semoga keberadaan kita di sini semakin meningkatkan kecintaan kita pada ilmu dan menambah ketaatan kita kepada Allah."),
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