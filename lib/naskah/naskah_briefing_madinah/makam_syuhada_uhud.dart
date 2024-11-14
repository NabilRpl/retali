import 'package:flutter/material.dart';

class MakamSyuhadaUhud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Makam Syuhada Uhud")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Saat ini kita berada di Makam Syuhada Uhud, tempat di mana para pahlawan Islam yang gugur dalam Perang Uhud dimakamkan. Di antara mereka terdapat paman Rasulullah ﷺ, Hamzah bin Abdul Muthalib رضي الله عنه, yang dikenal sebagai \"Singa Allah.\" Para syuhada yang dimakamkan di sini telah memberikan nyawa mereka demi menegakkan agama Allah."),
          _buildBulletPoint("Ketika kita berada di tempat ini, kita diingatkan pada firman Allah, “Janganlah kamu mengira bahwa orang-orang yang gugur di jalan Allah itu mati; bahkan mereka hidup di sisi Tuhannya dengan mendapat rezeki.” (QS. Ali Imran: 169)."),
          _buildBulletPoint("Mari kita berdoa untuk para syuhada agar Allah menempatkan mereka di surga-Nya yang tertinggi. Di tempat ini, kita juga diingatkan untuk memperbarui niat dan siap untuk berkorban demi agama, apapun yang terjadi."),
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