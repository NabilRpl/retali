import 'package:flutter/material.dart';

class ClockTower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Clock Tower (Makkah Royal Clock Tower)")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Di dekat Masjidil Haram, kita dapat melihat salah satu menara jam tertinggi di dunia, yaitu Makkah Royal Clock Tower. Bangunan ini menjadi ikon modern yang membantu jamaah mengetahui waktu shalat dengan tepat. Tingginya menjulang di atas Masjidil Haram, membuatnya mudah terlihat dari berbagai sudut kota Mekkah."),
          _buildBulletPoint("Di lantai-lantai atas Clock Tower terdapat museum Islam dan astronomi yang memberikan informasi tentang sejarah Islam, peradaban Muslim, dan keajaiban alam semesta. Menara ini juga mencerminkan semangat Islam dalam menghargai ilmu pengetahuan dan perkembangan teknologi. Semoga kita bisa mengambil hikmah dari keindahan arsitektur ini, sebagai pengingat akan pentingnya waktu dan kesungguhan dalam beribadah."),
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