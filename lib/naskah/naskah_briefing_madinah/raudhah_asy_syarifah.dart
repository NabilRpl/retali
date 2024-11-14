import 'package:flutter/material.dart';

class RaudhahAsySyarifah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Raudhah Asy Syarifah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita saat ini berada di salah satu tempat yang paling mulia dan istimewa di dunia, yaitu Raudhah Asy Syarifah. Rasulullah ﷺ bersabda, “Antara rumahku dan mimbarku adalah taman (Raudhah) dari taman-taman surga.” (HR. Bukhari dan Muslim). Setiap langkah kita di sini adalah langkah yang diiringi berkah dan rahmat Allah, sebuah kesempatan yang tidak semua orang dapatkan."),
          _buildBulletPoint("Raudhah sekarang ditandai dengan karpet berwarna hijau, berbeda dari karpet merah di sekitarnya. Tempat ini sering kali penuh dengan jamaah dari berbagai penjuru dunia yang datang untuk berdoa, memohon ampun, dan memanjatkan hajat mereka di tempat yang dijanjikan Rasulullah ﷺ sebagai taman surga."),
          _buildBulletPoint("Di Raudhah ini, kita merasakan kedekatan yang mendalam dengan Rasulullah ﷺ. Di tempat inilah beliau menyampaikan risalah Islam, memberi nasihat kepada para sahabat, dan menunaikan shalat dengan penuh ketundukan. Mari manfaatkan momen ini untuk memanjatkan doa yang tulus, memohon apa yang kita butuhkan kepada Allah, serta menyampaikan salam dan cinta kita kepada Nabi ﷺ."),
          _buildBulletPoint("Semoga setiap doa yang kita panjatkan di Raudhah ini diijabah oleh Allah. Ingatlah, jamaah sekalian, bahwa kesempatan berada di Raudhah ini sangatlah langka dan berharga, maka mari kita manfaatkan dengan sebaik-baiknya."),
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
