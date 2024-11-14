import 'package:flutter/material.dart';

class Kepulangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas Tour Leader Saat Kepulangan Jamaah Umrah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("1. Persiapan Sebelum Kepulangan"),
          
          _buildSubSectionTitle("Koordinasi dengan Pihak Terkait"),
          _buildBulletPoint("Berkomunikasi dengan agen perjalanan, pihak penginapan, dan maskapai penerbangan untuk mengonfirmasi jadwal kepulangan."),
          _buildBulletPoint("Mengatur transportasi dari penginapan ke bandara."),
          
          _buildSubSectionTitle("Pemeriksaan Dokumen"),
          _buildBulletPoint("Memastikan kelengkapan dokumen perjalanan jamaah seperti paspor, visa, tiket pesawat, dan boarding pass."),
          _buildBulletPoint("Menyusun dan mengatur dokumen yang diperlukan untuk proses check-in dan imigrasi di bandara."),
          
          _buildSubSectionTitle("Pembayaran dan Administrasi"),
          _buildBulletPoint("Menyelesaikan semua tagihan dan administrasi di penginapan."),
          _buildBulletPoint("Membantu jamaah menyelesaikan administrasi lainnya jika diperlukan."),
          
          _buildSubSectionTitle("Pengemasan dan Persiapan Bagasi"),
          _buildBulletPoint("Memberikan panduan kepada jamaah mengenai pengemasan barang dan batasan berat bagasi."),
          _buildBulletPoint("Mengatur penandaan bagasi untuk memudahkan identifikasi."),
          
          _buildSectionTitle("2. Proses Check-Out dari Penginapan"),
          _buildSubSectionTitle("Koordinasi Check-Out"),
          _buildBulletPoint("Mengatur waktu check-out yang sesuai dengan jadwal keberangkatan ke bandara."),
          _buildBulletPoint("Membantu jamaah dengan proses check-out dan memastikan semua barang telah dibawa."),
          
          _buildSubSectionTitle("Transportasi ke Bandara"),
          _buildBulletPoint("Menyiapkan kendaraan yang akan digunakan untuk mengantar jamaah ke bandara."),
          _buildBulletPoint("Memastikan kendaraan dalam kondisi baik dan nyaman untuk perjalanan."),
          
          _buildSectionTitle("3. Di Bandara"),
          _buildSubSectionTitle("Proses Check-In"),
          _buildBulletPoint("Membantu jamaah dengan proses check-in, termasuk penyerahan bagasi dan penerimaan boarding pass."),
          _buildBulletPoint("Memastikan semua jamaah mendapatkan tempat duduk yang sesuai dengan preferensi mereka."),
          
          _buildSubSectionTitle("Imigrasi dan Bea Cukai"),
          _buildBulletPoint("Mendampingi jamaah melalui proses imigrasi dan bea cukai."),
          _buildBulletPoint("Membantu jamaah dalam mengisi formulir yang diperlukan dan menjelaskan prosedur yang harus diikuti."),
          
          _buildSubSectionTitle("Pemberian Informasi Penting"),
          _buildBulletPoint("Memberikan informasi tentang gerbang keberangkatan, waktu boarding, dan fasilitas yang tersedia di bandara."),
          _buildBulletPoint("Menyampaikan informasi tentang durasi penerbangan dan prosedur saat tiba di negara asal."),
          
          _buildSectionTitle("4. Selama Menunggu di Bandara"),
          _buildSubSectionTitle("Pendampingan"),
          _buildBulletPoint("Menemani jamaah selama menunggu waktu boarding, memberikan dukungan dan menjawab pertanyaan yang mungkin muncul."),
          _buildBulletPoint("Memastikan jamaah tetap nyaman dan memberikan panduan mengenai fasilitas yang bisa digunakan di bandara."),
          
          _buildSubSectionTitle("Pemantauan Kesehatan dan Kenyamanan"),
          _buildBulletPoint("Memantau kondisi kesehatan jamaah, terutama jika ada yang memerlukan perhatian khusus."),
          _buildBulletPoint("Menyediakan makanan ringan atau minuman jika diperlukan selama menunggu."),
          
          _buildSectionTitle("5. Proses Boarding"),
          _buildSubSectionTitle("Pengaturan Boarding"),
          _buildBulletPoint("Mengarahkan jamaah menuju gerbang keberangkatan sesuai dengan jadwal boarding."),
          _buildBulletPoint("Memastikan semua jamaah naik ke pesawat dengan tertib."),
          
          _buildSubSectionTitle("Pemeriksaan Akhir"),
          _buildBulletPoint("Melakukan pemeriksaan akhir untuk memastikan tidak ada barang yang tertinggal."),
          _buildBulletPoint("Menyampaikan informasi terakhir kepada jamaah mengenai prosedur dalam pesawat."),
          
          _buildSectionTitle("6. Pendampingan Selama Perjalanan"),
          _buildSubSectionTitle("Dukungan Selama Penerbangan"),
          _buildBulletPoint("Jika memungkinkan, mendampingi jamaah selama penerbangan untuk memberikan bantuan jika dibutuhkan."),
          _buildBulletPoint("Memberikan informasi mengenai prosedur di bandara tujuan."),
          
          _buildSectionTitle("7. Proses Kepulangan di Negara Asal"),
          _buildSubSectionTitle("Imigrasi dan Bea Cukai di Negara Asal"),
          _buildBulletPoint("Membantu jamaah dalam proses imigrasi dan bea cukai di negara asal."),
          _buildBulletPoint("Memastikan semua jamaah melewati proses ini dengan lancar."),
          
          _buildSubSectionTitle("Penjemputan di Bandara"),
          _buildBulletPoint("Mengatur penjemputan oleh pihak keluarga atau agen perjalanan di bandara."),
          _buildBulletPoint("Memastikan semua bagasi jamaah diambil dengan aman."),
          
          _buildSubSectionTitle("Pemberian Informasi Lanjutan"),
          _buildBulletPoint("Memberikan informasi akhir kepada jamaah mengenai kontak darurat dan layanan pasca kepulangan jika diperlukan."),
          _buildBulletPoint("Menyampaikan ucapan terima kasih dan doa agar selamat sampai di rumah."),
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
