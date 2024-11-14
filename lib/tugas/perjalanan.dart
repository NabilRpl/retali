import 'package:flutter/material.dart';

class Perjalanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kesiapan Jamaah Sebelum Keberangkatan Umrah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("1. Memastikan Keberangkatan"),
          _buildBulletPoint("Memastikan semua jamaah sudah berkumpul di lokasi keberangkatan sesuai dengan jadwal yang telah ditentukan."),
          _buildBulletPoint("Memastikan jamaah telah menyiapkan dan membawa semua dokumen perjalanan yang diperlukan, seperti paspor, visa, tiket, dan surat keterangan kesehatan apabila diperlukan."),

          _buildSectionTitle("2. Pengecekan Administrasi"),
          _buildSubSectionTitle("Pengecekan Terakhir"),
          _buildBulletPoint("Melakukan pengecekan terakhir terhadap dokumen-dokumen tour leader atau dokumen perjalanan jamaah untuk memastikan kelengkapan dan kevalidan."),
          _buildBulletPoint("Mengumpulkan informasi kontak darurat dari setiap jamaah untuk komunikasi selama perjalanan."),

          _buildSectionTitle("3. Koordinasi dengan Pihak Terkait"),
          _buildSubSectionTitle("Komunikasi dan Persiapan"),
          _buildBulletPoint("Berkomunikasi dengan tim handling bandara dan manajemen terkait persiapan keberangkatan, seperti check-in dan prosedur boarding."),
          _buildBulletPoint("Memastikan semua tiket pesawat, akomodasi, dan bus untuk jamaah telah diatur dengan baik."),

          _buildSectionTitle("4. Memberikan Informasi Penting"),
          _buildSubSectionTitle("Pengumuman dan Koordinasi"),
          _buildBulletPoint("Memberikan pengumuman kepada jamaah mengenai jadwal keberangkatan, prosedur di bandara, dan aturan yang perlu diikuti."),
          _buildBulletPoint("Memberikan informasi tentang tempat-tempat pertemuan dan titik kumpul selama perjalanan untuk memudahkan koordinasi."),

          _buildSectionTitle("5. Membangun Kekompakan di Antara Jamaah"),
          _buildSubSectionTitle("Suasana Positif"),
          _buildBulletPoint("Membangun suasana yang positif dan harmonis di antara jamaah sejak awal perjalanan."),
          _buildBulletPoint("Memberikan arahan tentang pentingnya kerjasama, saling tolong-menolong, dan toleransi selama perjalanan Umrah."),

          _buildSectionTitle("6. Menyampaikan Aturan Perjalanan Travel"),
          _buildSubSectionTitle("Tata Tertib Perjalanan"),
          _buildBulletPoint("Mensosialisasikan aturan dan tata tertib yang berlaku selama perjalanan, termasuk menjaga kebersihan, ketertiban, dan keamanan."),

          _buildSectionTitle("7. Kesiapan Pribadi"),
          _buildSubSectionTitle("Kesiapan Tour Leader"),
          _buildBulletPoint("Memastikan tour leader dalam keadaan siap secara fisik dan mental untuk menghadapi berbagai situasi."),
          _buildBulletPoint("Menyusun rencana darurat dan strategi penyelesaian masalah bila terjadi kendala atau kejadian tak terduga."),

          _buildSectionTitle("8. Pemantauan Kesehatan Jamaah"),
          _buildSubSectionTitle("Kondisi Kesehatan"),
          _buildBulletPoint("Memantau kondisi kesehatan jamaah sejak awal perjalanan dan memberikan bantuan medis jika diperlukan."),
          _buildBulletPoint("Memastikan jamaah mematuhi protokol kesehatan yang berlaku."),

          _buildSectionTitle("9. Kepatuhan Terhadap Peraturan"),
          _buildSubSectionTitle("Mematuhi Instruksi"),
          _buildBulletPoint("Memastikan semua jamaah mematuhi peraturan dan instruksi dari otoritas penerbangan, pihak bandara, dan pihak terkait lainnya."),

          _buildSectionTitle("10. Membantu Jamaah Tercapai Tujuan Ibadahnya"),
          _buildSubSectionTitle("Motivasi dan Kepuasan"),
          _buildBulletPoint("Mendorong jamaah untuk semakin giat belajar agama dan berpotensi melakukan ibadah Umrah di masa depan atau bahkan berhaji."),
          _buildBulletPoint("Menumbuhkan loyalitas jamaah terhadap Retali sehingga tertarik menggunakan jasa umrah atau haji di kemudian hari."),

          _buildSectionTitle("11. Membimbing Ibadah Sesuai Sunnah"),
          _buildSubSectionTitle("Pedoman Ibadah"),
          _buildBulletPoint("Tour leader perlu membimbing ibadah sesuai sunnah dan menghindari perkara bid'ah."),
          _buildBulletPoint("Membimbing jamaah sesuai tata cara ibadah Umrah yang benar agar ibadah menjadi sah, khusyuk, dan berkesan."),

          _buildSectionTitle("12. Manajerial"),
          _buildSubSectionTitle("Efisiensi dan Organisasi"),
          _buildBulletPoint("Tour leader memastikan efisiensi dan organisasi yang baik dalam setiap aspek perjalanan, dari logistik hingga jadwal ibadah."),
          _buildBulletPoint("Meningkatkan kepuasan dan kualitas pengalaman ibadah umrah bagi jamaah dengan kepatuhan pada peraturan."),
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

  Widget _buildSubSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(text, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
