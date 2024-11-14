import 'package:flutter/material.dart';

class GunungUhud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Gunung Uhud")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita berada di salah satu tempat bersejarah yang sangat berarti bagi umat Islam, yaitu Gunung Uhud. Rasulullah ﷺ bersabda, “Gunung ini mencintai kita, dan kita pun mencintainya.” (HR. Bukhari). Gunung ini menjadi saksi dari Perang Uhud, yang menjadi ujian berat bagi umat Islam saat itu."),
          _buildBulletPoint("Saat ini, Gunung Uhud berdiri megah di depan kita dengan keindahan alamnya yang tak berubah. Ketika kita berdiri di sini, mari kita bayangkan suasana perang di mana para sahabat mempertaruhkan nyawa mereka demi Islam. Di sinilah Hamzah bin Abdul Muthalib رضي الله عنه, paman Nabi ﷺ, gugur sebagai syahid."),
          _buildBulletPoint("Meskipun umat Islam sempat hampir meraih kemenangan, kekalahan terjadi ketika beberapa pemanah meninggalkan pos mereka demi mengejar harta rampasan. Rasulullah ﷺ terluka, bahkan beberapa sahabat mengira beliau telah wafat. Di sini kita belajar bahwa ketaatan kepada Allah dan Rasul-Nya adalah kunci keberhasilan."),
          _buildBulletPoint("Tempat ini mengajarkan kita pentingnya disiplin, kesabaran, dan keikhlasan dalam menjalankan perintah Allah. Semoga kita semua bisa mengambil pelajaran berharga dari peristiwa ini dan menjadi hamba yang selalu taat kepada-Nya."),
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
