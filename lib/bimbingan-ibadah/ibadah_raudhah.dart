import 'package:flutter/material.dart';

class IbadahRaudhah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bimbingan Ibadah di Raudhah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("1. Persiapan Sebelum Memasuki Raudhah"),
          _buildSubSection("Niat dan Doa:"),
          _buildBulletPoint("Niatkan dalam hati untuk beribadah dan berdoa dengan khusyuk di Raudhah."),
          _buildBulletPoint("Bacalah doa agar diberi kemudahan dan kelancaran dalam beribadah di Raudhah."),
          
          _buildSubSection("Kebersihan dan Kesopanan:"),
          _buildBulletPoint("Pastikan dalam keadaan suci (berwudhu) sebelum memasuki Masjid Nabawi."),
          _buildBulletPoint("Kenakan pakaian yang sopan dan bersih. Bagi wanita, pastikan memakai jilbab dan pakaian yang menutup aurat dengan baik."),
          
          _buildSectionTitle("2. Memasuki Masjid Nabawi"),
          _buildSubSection("Adab Memasuki Masjid:"),
          _buildBulletPoint("Masuki masjid dengan kaki kanan sambil membaca doa masuk masjid:"),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "بِسْمِ اللَّهِ وَالسَّلاَمُ عَلَى رَسُولِ اللَّهِ اللَّهُمَّ اغْفِرْ لِى ذُنُوبِى وَافْتَحْ لِى أَبْوَابَ رَحْمَتِكَ\n"
              "Artinya: \"Dengan nama Allah, dan salam kepada Rasulullah. Ya Allah, ampunilah dosa-dosaku dan bukakanlah pintu-pintu rahmat-Mu untukku.\"",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          _buildSubSection("Menuju Raudhah:"),
          _buildBulletPoint("Ikuti petunjuk dan arahan petugas masjid menuju Raudhah. Tetaplah tenang dan sabar, terutama saat kondisi masjid ramai."),
          
          _buildSectionTitle("3. Saat Berada di Raudhah"),
          _buildSubSection("Menghormati Tempat:"),
          _buildBulletPoint("Memasuki Raudhah dengan rasa hormat dan rendah hati."),
          _buildBulletPoint("Jangan terburu-buru dan tetap jaga ketenangan."),
          
          _buildSubSection("Shalat Sunah:"),
          _buildBulletPoint("Temukan tempat di Raudhah untuk melakukan shalat sunah tahiyatul masjid dua rakaat."),
          _buildBulletPoint("Lakukan shalat dengan khusyuk dan tenang, mengikuti tata cara shalat sunah pada umumnya."),
          
          _buildSubSection("Doa dan Dzikir:"),
          _buildBulletPoint("Setelah shalat, lanjutkan dengan berdoa dengan ikhlas dan khusyuk, memohon ampunan, rahmat, dan kebaikan dari Allah."),
          _buildBulletPoint("Lakukan dzikir dan baca Al-Quran sesuai kemampuan. Dianjurkan memperbanyak doa di Raudhah karena keutamaannya."),
          
          _buildSectionTitle("4. Memberi Kesempatan Kepada Jamaah Lain"),
          _buildBulletPoint("Berikan kesempatan kepada jamaah lain dengan tidak berlama-lama di Raudhah."),
          _buildBulletPoint("Hindari tindakan yang mengganggu jamaah lain, seperti berbicara keras atau berdesakan."),
          
          _buildSectionTitle("5. Keluar dari Raudhah"),
          _buildSubSection("Adab Keluar Masjid:"),
          _buildBulletPoint("Keluar dari Raudhah dan Masjid Nabawi dengan tertib."),
          _buildBulletPoint("Saat meninggalkan masjid, langkahkan kaki kiri sambil membaca doa keluar masjid:"),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "بِسْمِ اللَّهِ وَالسَّلاَمُ عَلَى رَسُولِ اللَّهِ اللَّهُمَّ اغْفِرْ لِى ذُنُوبِى وَافْتَحْ لِى أَبْوَابَ فَضْلِكَ\n"
              "Artinya: \"Dengan nama Allah dan salam kepada Rasulullah. Ya Allah, ampunilah dosa-dosaku dan aku memohon kepada-Mu sebagian dari karunia-Mu.\"",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          
          _buildSectionTitle("Catatan Penting"),
          _buildBulletPoint("Patuhi semua aturan dan petunjuk yang diberikan oleh petugas Masjid Nabawi."),
          _buildBulletPoint("Utamakan sikap sabar dan sopan selama berada di masjid, khususnya di Raudhah yang sangat padat jamaah."),
          
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              "Dengan mengikuti tata cara ini, diharapkan jamaah dapat beribadah di Raudhah dengan khusyuk, tertib, dan mendapatkan keberkahan dari tempat yang mulia ini.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
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
