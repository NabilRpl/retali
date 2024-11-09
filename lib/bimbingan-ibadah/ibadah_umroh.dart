import 'package:flutter/material.dart';

class IbadahUmroh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bimbingan Ibadah Umrah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("1. Persiapan Sebelum Miqat"),
          _buildSubSection("Mandi dan Membersihkan Diri:"),
          _buildBulletPoint("Sebelum mencapai miqat, mandi besar (ghusl) seperti mandi junub untuk membersihkan diri. Hal ini dilakukan sebagai bentuk persiapan dan kesucian sebelum memasuki ihram."),
          _buildBulletPoint("Potong kuku, cukur rambut, dan rapihkan diri."),
          
          _buildSubSection("Pakaian Ihram:"),
          _buildBulletPoint("Laki-laki: Kenakan dua lembar kain ihram (tidak berjahit). Satu lembar untuk menutupi bagian bawah, dan satu lembar untuk menutupi bagian atas tubuh."),
          _buildBulletPoint("Perempuan: Kenakan pakaian yang sederhana dan longgar yang menutupi seluruh tubuh kecuali wajah dan telapak tangan. Jangan mengenakan cadar atau sarung tangan."),
          
          _buildSectionTitle("2. Memasuki Miqat"),
          _buildSubSection("Lokasi Miqat:"),
          _buildBulletPoint("Ketahui lokasi miqat yang akan dilewati sesuai dengan tempat asal atau rute perjalanan . Contoh miqat antara lain. Dzul Hulaifah (Bir Ali) untuk penduduk Madinah, Al-Juhfah untuk penduduk syam, dan Yalamlam untuk penduduk Yaman."),
          _buildSubSection("Niat dan Talbiyah:"),
          _buildBulletPoint("Setelah memasuki area miqat, niatkan ihram untuk haji atau umrah. Niat dilakukan dalam hati dan dilafalkan dengan lisan."),
          _buildBulletPoint("Umrah: Labbaik Allahumma Umratan (Ya Allah, aku memenuhi panggilan-Mu untuk berumrah)"),
          _buildBulletPoint("Haji: Labbaik Allahumma Hajjan (Ya Allah, aku memenuhi panggilan-Mu untuk berhaji)."),
         
          _buildSectionTitle("3. Membaca Talbiyah"),
          _buildSubSection("Mengulang Talbiyah:"),
          _buildBulletPoint("Setelah berniat, segera membaca talbiyah dengan suara keras (untuk laki-laki) dan pelan (untuk perempuan) Bacaan Talbiyah."),
          _buildBulletPoint("Labbaik Allahumma labbaik, labbaika laa syarika laka labbaik. Innal hamda, wan-ni'mata, laka wal-mulk, laa syarika lak."),
          _buildBulletPoint("Artinya: Aku memenuhi panggilan-Mu ya Allah, aku memenuhi panggilan-Mu, tiada sekutu bagi-Mu, Sesungguhnya segala puji nikmat, dan kerajaan adalah milik-Mu, tiada sekutu bagi-Mu. tiada sekutu bagi-Mu."),
          
          _buildSectionTitle("4. Menjaga Larangan Alamat:"),
          _buildSubSection("Larangan Selama Ihram:"),
          _buildBulletPoint("Tidak memotong kuku atau mencukur rambut."),
          _buildBulletPoint("Tidak memakai wewangian di badan atau pakaian."),
          _buildBulletPoint("Tidak menikah atau menikahkan."),
          _buildBulletPoint("Tidak berburu atau membunuh binatang."),
          _buildBulletPoint("Tidak mengenakan pakaian berjahit (untuk laki-laki)."),
          _buildBulletPoint("Tidak menutup kepala(untuk laki-laki) atau wajah (untuk perempuan)."),
          _buildBulletPoint("Menjaga diri dari perbuatan dosa dan pertengkaran."),
          
          _buildSectionTitle("5. Melanjutkan Perjalanan ke Mekkah"),
          _buildSubSection("Perjalanan Menuju Mekkah:"),
          _buildBulletPoint("Setelah Ihram, lanjutkan perjalanan ke Mekkah sambil terus mengulang Talbiyah hingga tiba di Masjidil Haram."),
          _buildBulletPoint("Tetap jaga niat, sikap, dan amalan selama perjalanan."),

          _buildSectionTitle("6. Memasuki Masjidil Haram"),
          _buildSubSection("Masuk Masjidil Haram:"),
          _buildBulletPoint("Masuklah ke Masjidil Haram dengan kaki kanan sambil membaca doa masuk masjid."),
          _buildBulletPoint("Saat melihat Ka'bah, hentikan Talbiyah dan mulailah dengan doa khusus saat melihat Ka'bah untuk pertama kali."),
          
          _buildSectionTitle("7. Melaksanakan Thawaf dan Sa'i"),
          _buildSubSection("Thawaf:"),
          _buildBulletPoint("Lakukan thawaf (mengelilingi Ka'bah) sebanyak tujuh putaran dengan dimulai dari Hajar Aswad."),
          _buildSubSection("Sa'i:"),
          _buildBulletPoint("Lakukan Sa'i (berjalanan antara bukti Safa dan Marwah) sebanyak tujuh kali perjalanan."),
          
          _buildSectionTitle("8. Tahallul"),
          _buildSubSection("Mengakhiri Ihram (Tahallul):"),
          _buildBulletPoint("Setelah Sa'i akhir Ihram dengan Tahallul yaitu mencukur atau memotong sebagian rambut (minimal tiga helai rambut). Bagi laki-laki disunnahkan mencukur habis rambut, sementara bagi perempuan cukup memotong sedikit rambut."),

          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              "Dengan mengikuti tata cara ini, Jamaah dapat menjalani proses miqat hingga Umrah dengan benar dan sesuai dengan  sunnah, sehingga ibadah haji atau umrah yang dilakukan menjadi sah dan diterima oleh Allah SWT.",
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
