import 'package:flutter/material.dart';

class GroupingManasik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Group Manasik")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu'alaikum warahmatullahi wabarakatuh,"),
          _buildBulletPoint("Bismillahirrahmanirrahim, Alhamdulillahi rabbil 'alamin, segala puji bagi Allah عز وجل yang telah memberikan kita nikmat iman, kesehatan, dan kesempatan sehingga kita dapat berkumpul di sini dalam keadaan yang penuh berkah."),
          _buildBulletPoint("Shalawat serta salam semoga senantiasa tercurahkan kepada junjungan kita Nabi Besar Muhammad ﷺ, beserta keluarga, sahabat, dan para pengikutnya yang setia hingga akhir zaman."),
          _buildSectionTitle("Para jamaah Retali yang dirahmati Allah,"),
          _buildBulletPoint("Alhamdulillah, kita telah menyelesaikan perjalanan kita di kota Madinah dan sebentar lagi kita akan melanjutkan perjalanan menuju kota suci Mekkah untuk melaksanakan ibadah umrah."),
          _buildBulletPoint("Sebelum kita berangkat, izinkan saya untuk memberikan beberapa pemantapan mengenai manasik umrah agar kita semua dapat melaksanakan ibadah dengan benar dan khusyuk."),
          _buildSectionTitle("Niat dan Ihram:"),
          _buildBulletPoint("Sebelum memasuki miqat, pastikan kita sudah berniat untuk melaksanakan umrah dan mengenakan pakaian ihram."),
          _buildBulletPoint("Ihram bagi laki-laki adalah dua helai kain putih tanpa jahitan, sementara bagi perempuan adalah pakaian yang menutupi seluruh tubuh kecuali wajah dan telapak tangan."),
          _buildBulletPoint("Setelah berniat dan mengenakan ihram, larangan-larangan ihram mulai berlaku, seperti tidak memotong rambut atau kuku, tidak menggunakan wangi-wangian, dan lain-lain."),
          _buildSectionTitle("Tawaf:"),
          _buildBulletPoint("Setelah tiba di Masjidil Haram, kita akan melaksanakan tawaf mengelilingi Ka'bah sebanyak tujuh putaran, dimulai dari Hajar Aswad dan berakhir di tempat yang sama."),
          _buildBulletPoint("Tidak ada doa khusus yang terlalu sulit, perbanyaklah bermunajat, dzikir, dan istighfar."),
          _buildSectionTitle("Sa'i:"),
          _buildBulletPoint("Setelah menyelesaikan tawaf, kita akan melakukan sa'i, yaitu berjalan tujuh kali antara bukit Shafa dan Marwah."),
          _buildBulletPoint("Saat sa'i, perbanyaklah doa dan dzikir, mengingat perjuangan Hajar mencari air untuk putranya, Nabi Ismail."),
          _buildSectionTitle("Tahallul:"),
          _buildBulletPoint("Setelah sa'i, kita akan melakukan tahallul, yaitu mencukur atau memotong sebagian rambut."),
          _buildBulletPoint("Bagi laki-laki, dianjurkan untuk mencukur seluruh rambut, sedangkan perempuan cukup memotong sebagian kecil."),
          _buildSectionTitle("Tata Krama dan Etika:"),
          _buildBulletPoint("Selama berada di Masjidil Haram, harap jaga adab dan sopan santun."),
          _buildBulletPoint("Hormati sesama jamaah dan petugas masjid. Jaga kebersihan, ketertiban, dan jangan berdesak-desakan."),
          _buildSectionTitle("Para jamaah yang berbahagia,"),
          _buildBulletPoint("Mari kita manfaatkan waktu di kota Mekkah dengan sebaik-baiknya. Perbanyaklah ibadah, dzikir, dan doa."),
          _buildBulletPoint("Semoga Allah عز وجل menerima amal ibadah kita dan memberikan kita keberkahan serta kemudahan dalam menjalankan ibadah umrah."),
          _buildSubSection("Demikian yang dapat saya sampaikan. Semoga perjalanan kita menuju Mekkah dilancarkan dan diberkahi oleh Allah عز وجل."),
          _buildSubSection("Wassalamu'alaikum warahmatullahi wabarakatuh."),
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

  Widget _buildSubSection(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
      ),
    );
  }
}
