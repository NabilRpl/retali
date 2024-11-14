import 'package:flutter/material.dart';

class Arafah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Arafah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, segala puji hanya bagi Allah Azza wa Jalla yang telah memberi kita kesempatan luar biasa untuk hadir di tempat mulia ini. Shalawat serta salam kita sampaikan kepada Nabi Muhammad ﷺ, teladan kita dalam setiap amal dan kebaikan."),
          _buildBulletPoint("Jamaah Retali, kita berada di Padang Arafah, lokasi yang sangat istimewa dalam ibadah haji. Nabi Muhammad ﷺ bersabda, \"Haji itu adalah Arafah\" (HR. Tirmidzi). Tanpa wukuf di Arafah, maka ibadah haji seseorang tidak akan sempurna. Arafah merupakan simbol dari pengakuan dan permohonan ampunan kita kepada Allah, yang dengan kasih sayang-Nya akan menerima doa dan permintaan kita di tempat ini."),
          _buildBulletPoint("Arafah saat ini dilengkapi dengan tenda-tenda besar untuk menaungi jamaah yang hadir dari seluruh dunia. Di Arafah ini pula, Nabi Muhammad ﷺ berkhutbah pada Haji Wada’, menyampaikan pesan-pesan penting tentang hak, persaudaraan, dan kasih sayang. Tempat ini mengajarkan kepada kita tentang ketundukan dan taubat yang tulus kepada Allah."),
          _buildBulletPoint("Mari kita manfaatkan waktu yang sangat berharga ini untuk berdoa dan memohon kepada Allah. Semoga kita semua diterima sebagai hamba yang bertobat dan diampuni dosa-dosa kita."),
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