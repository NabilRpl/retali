import 'package:flutter/material.dart';

class JabalRahmah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Jabal Rahmah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, segala puji kita panjatkan kepada Allah Azza wa Jalla yang telah memberikan kita kesempatan luar biasa ini untuk hadir di tempat penuh sejarah, yaitu Jabal Rahmah. Shalawat dan salam kita sampaikan kepada Nabi Muhammad ﷺ, sosok teladan kita yang mengajarkan cinta, kasih sayang, dan pengorbanan dalam Islam."),
          _buildBulletPoint("Saat ini kita berada di Jabal Rahmah, atau \"Bukit Kasih Sayang,\" yang menurut tradisi Islam menjadi tempat pertemuan kembali Nabi Adam dan Hawa setelah berpisah lama saat diturunkan ke bumi. Tempat ini mengandung pelajaran yang sangat mendalam tentang kasih sayang dan ampunan Allah kepada umat-Nya. Di sinilah mereka berdua memohon ampunan Allah dan diterima taubatnya, sebagai awal dari kehidupan manusia di bumi."),
          _buildBulletPoint("Jabal Rahmah saat ini memiliki sebuah monumen putih di puncaknya sebagai penanda bukit. Dari atas bukit ini, kita dapat melihat hamparan luas Padang Arafah di bawah, yang setiap tahunnya menjadi tempat wukuf bagi para jamaah haji. Meski tidak ada dalil khusus yang mengharuskan kita berdoa di bukit ini, Jabal Rahmah mengingatkan kita pada pentingnya cinta, ampunan, dan keikhlasan."),
          _buildBulletPoint("Mari kita manfaatkan kesempatan ini dengan berdoa kepada Allah, memohon ampunan dan kebaikan bagi diri kita dan keluarga kita. Semoga Allah menjadikan kita sebagai orang-orang yang penuh kasih sayang, selalu menjaga hubungan baik, serta senantiasa diberi keberkahan dalam kehidupan ini."),
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