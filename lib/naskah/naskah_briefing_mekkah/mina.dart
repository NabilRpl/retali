import 'package:flutter/material.dart';

class Mina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Mina")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Segala puji bagi Allah Azza wa Jalla yang telah memudahkan kita untuk berada di Mina, tempat bersejarah dalam pelaksanaan ibadah haji. Shalawat serta salam kepada Nabi Muhammad ﷺ, yang menjadi contoh terbaik dalam segala ibadah kita."),
          _buildBulletPoint("Di Mina ini, kita akan melakukan pelontaran jumrah, yaitu melempar batu sebagai simbol perlawanan terhadap godaan setan. Ritual ini mengingatkan kita untuk senantiasa bertekad menghindari godaan yang menjauhkan kita dari Allah. Melontar jumrah juga menandai kemenangan iman atas hawa nafsu dan ketaatan atas godaan."),
          _buildBulletPoint("Mina hari ini dipenuhi dengan tenda-tenda jamaah yang berusaha menghidupkan semangat pelaksanaan ibadah haji. Di sini, Rasulullah ﷺ pernah tinggal selama hari-hari tasyriq, berdoa dan berdzikir. Semoga kita bisa mengambil pelajaran penting dari tempat ini untuk senantiasa meningkatkan iman dan taqwa kita kepada Allah."),
          _buildBulletPoint("Mari kita isi waktu kita di Mina dengan berdzikir dan berdoa, memohon perlindungan dari Allah dari segala tipu daya setan."),
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
