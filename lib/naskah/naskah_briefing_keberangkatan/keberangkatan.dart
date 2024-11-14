import 'package:flutter/material.dart';

class Keberangkatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing saat Keberangkatan")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu'alaikum warahmatullahi wabarakatuh,"),
          _buildBulletPoint("Alhamdulillah, segala puji bagi Allah SWT yang telah memberikan kita kesempatan untuk melaksanakan ibadah umrah. Shalawat dan salam kita sampaikan kepada junjungan kita Nabi Muhammad SAW, keluarga, sahabat, dan kita semua sebagai umatnya."),
          
          _buildSectionTitle("Perkenalan"),
          _buildBulletPoint("Perkenalkan, nama saya [Nama Tour Leader], dan saya akan menjadi tour leader Anda selama perjalanan umrah ini. Saya bersama tim Retali akan mendampingi Anda semua untuk memastikan perjalanan ibadah kita berjalan lancar, aman, dan nyaman, sesuai dengan tuntunan syariat Islam."),
          
          _buildSectionTitle("Kesiapan Jamaah"),
          _buildSubSection("Waktu dan Tempat Berkumpul:"),
          _buildBulletPoint("Pastikan semua jamaah sudah berkumpul di lokasi keberangkatan di [lokasi] pada pukul [waktu] sesuai dengan jadwal yang telah ditentukan."),
          _buildSubSection("Dokumen Perjalanan:"),
          _buildBulletPoint("Pastikan semua jamaah telah membawa dokumen perjalanan yang diperlukan, seperti paspor, visa, tiket, dan surat keterangan kesehatan jika diperlukan. Silakan periksa kembali kelengkapan dokumen Anda."),
          
          _buildSectionTitle("Pengecekan Administrasi"),
          _buildSubSection("Verifikasi Dokumen:"),
          _buildBulletPoint("Kami akan melakukan pengecekan terakhir terhadap dokumen perjalanan Anda. Mohon siapkan paspor dan tiket untuk diperiksa."),
          _buildSubSection("Kontak Darurat:"),
          _buildBulletPoint("Kami juga akan mengumpulkan informasi kontak darurat dari setiap jamaah. Mohon untuk memberikan nomor kontak yang bisa dihubungi selama perjalanan."),
          
          _buildSectionTitle("Koordinasi dengan Pihak Terkait"),
          _buildSubSection("Bandara dan Penerbangan:"),
          _buildBulletPoint("Kami telah berkoordinasi dengan pihak handling bandara dan manajemen terkait persiapan keberangkatan, termasuk check-in dan prosedur boarding. Mohon ikuti arahan dari tim kami."),
          _buildSubSection("Akomodasi dan Transportasi:"),
          _buildBulletPoint("Semua tiket pesawat, akomodasi, dan transportasi selama di Tanah Suci telah diatur dengan baik. Kami akan memastikan semuanya sesuai dengan rencana."),
          
          _buildSectionTitle("Informasi Penting"),
          _buildSubSection("Jadwal Keberangkatan:"),
          _buildBulletPoint("Keberangkatan kita dijadwalkan pada pukul [waktu], dengan penerbangan [nomor penerbangan]. Pastikan Anda sudah berada di area check-in minimal 3 jam sebelum keberangkatan."),
          _buildSubSection("Prosedur di Bandara:"),
          _buildBulletPoint("Ikuti instruksi dari petugas bandara dan pastikan Anda membawa barang-barang sesuai dengan aturan. Jangan membawa barang-barang terlarang dan perhatikan batasan berat bagasi."),
          _buildSubSection("Titik Kumpul:"),
          _buildBulletPoint("Selalu perhatikan titik-titik kumpul yang telah ditentukan selama perjalanan. Informasi ini akan diberikan secara detail oleh tim kami setiap kali kita sampai di tujuan baru."),
          
          _buildSectionTitle("Membangun Kekompakan"),
          _buildSubSection("Kerjasama dan Toleransi:"),
          _buildBulletPoint("Mari kita bangun suasana yang positif dan harmonis di antara kita. Penting untuk saling membantu, toleransi, dan keterbukaan selama perjalanan ini."),
          
          _buildSectionTitle("Aturan Perjalanan"),
          _buildSubSection("Tata Tertib:"),
          _buildBulletPoint("Jaga kebersihan, ketertiban, dan keamanan selama perjalanan. Patuhi semua aturan yang telah disosialisasikan."),
          
          _buildSectionTitle("Kesiapan Pribadi"),
          _buildSubSection("Kesehatan dan Keselamatan:"),
          _buildBulletPoint("Jaga kesehatan Anda, ikuti protokol kesehatan yang berlaku. Jika merasa tidak enak badan, segera lapor ke tim kami."),
          _buildSubSection("Kesiapan Mental:"),
          _buildBulletPoint("Siapkan diri secara mental untuk menghadapi berbagai situasi yang mungkin terjadi selama perjalanan."),
          
          _buildSectionTitle("Pembimbingan Ibadah"),
          _buildSubSection("Ibadah Sesuai Sunnah:"),
          _buildBulletPoint("Kami akan membimbing Anda untuk melaksanakan ibadah umrah sesuai dengan sunnah Rasulullah SAW. Hindari perkara bid'ah dan pastikan ibadah Anda sah dan khusyuk."),
          
          _buildSectionTitle("Manajerial"),
          _buildSubSection("Efisiensi dan Organisasi:"),
          _buildBulletPoint("Kami akan menjalankan setiap aspek perjalanan dengan manajerial yang baik untuk memastikan efisiensi dan organisasi yang rapi. Hal ini bertujuan agar Anda mendapatkan pengalaman ibadah yang berkesan dan memuaskan."),
          
          _buildSectionTitle("Penutup"),
          _buildBulletPoint("Semoga Allah SWT memudahkan perjalanan kita, memberikan kita kesehatan dan kekuatan, serta menerima seluruh ibadah kita. Mari kita niatkan perjalanan ini semata-mata untuk mendapatkan ridha Allah SWT."),
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
