import 'package:flutter/material.dart';

class MasjidQuba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Quba")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita sekarang berada di tempat yang sangat mulia, Masjid Quba, masjid pertama yang dibangun dalam Islam. Bisa bayangkan? Inilah tempat yang dibangun oleh Nabi Muhammad ﷺ bersama para sahabatnya yang mulia, dan masjid ini dibangun atas dasar takwa kepada Allah sejak awal. Begitu besar kedudukannya dalam Islam!"),
          _buildBulletPoint("Ketika Nabi ﷺ tiba di Madinah setelah hijrah dari Mekkah, beliau tinggal beberapa hari di Quba. Salah satu tindakan pertama beliau adalah membangun masjid ini bersama para sahabatnya dari kaum Muhajirin dan Anshar. Masjid Quba terletak di perkampungan Bani 'Amr bin 'Auf, dan hingga sekarang, masjid ini tetap berdiri megah. Ini bukan hanya sebuah bangunan, Sobat Retali, tetapi juga simbol iman, ketakwaan, dan kecintaan kepada Allah dan Rasul-Nya."),
          _buildBulletPoint("Yang menarik, Nabi ﷺ biasa mengunjungi masjid ini setiap hari Sabtu. Beliau datang baik dengan berjalan kaki maupun berkendara, dan melaksanakan salat di sini. Beliau ﷺ menyampaikan kepada kita dalam sebuah hadis, “Barang siapa bersuci di rumahnya, kemudian datang ke Masjid Quba dan melaksanakan salat di dalamnya, baginya pahala seperti pahala umrah.” Bayangkan, Sobat Retali, kita semua yang hadir di sini bisa meraih pahala umrah dengan melaksanakan salat di masjid ini. Maka, jangan lewatkan kesempatan emas ini, insya Allah."),
          _buildBulletPoint("Sobat Retali, Masjid Quba juga mendapatkan perhatian besar sepanjang sejarah. Diperbarui oleh Khalifah Utsman bin Affan رضي الله عنه, dan kemudian ditingkatkan lagi oleh Umar bin Abdul Aziz ketika beliau menjadi gubernur Madinah. Hingga kini, di era Kerajaan Saudi, masjid ini terus diperluas. Kita bisa melihat bagaimana desain aslinya tetap dipertahankan, tetapi dengan tambahan empat menara megah dan beberapa kubah besar. Saat ini, di bawah Proyek Raja Salman, masjid ini diperluas lebih jauh dan bisa menampung hingga 66 ribu jamaah."),
          _buildBulletPoint("Sekarang, perhatikan Sobat Retali, lihat sekeliling. Banyak sekali jamaah dari seluruh dunia yang datang ke sini, mengingat betapa besar keutamaan dan berkah yang ada di masjid ini. Ini adalah tempat yang selalu terbuka untuk kita semua, tanpa batasan waktu. Setiap saat, kita bisa datang untuk mendekatkan diri kepada Allah di sini."),
          _buildBulletPoint("Masjid ini bukan hanya sebuah bangunan, tetapi juga saksi bisu dari hijrah Nabi Muhammad ﷺ, simbol perjuangan, ketakwaan, dan kecintaan kepada Islam. Semoga kita semua mendapatkan keberkahan dari tempat yang mulia ini dan bisa membawa pulang kenangan spiritual yang tak terlupakan."),
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
