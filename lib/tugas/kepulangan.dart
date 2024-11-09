import 'package:flutter/material.dart';

class Kepulangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius:
                    BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Tugas Tour Leader Umrah',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius:
                      BorderRadius.circular(10), // Rounded corners for the box
                ),
                padding:
                    const EdgeInsets.all(16.0), // Padding inside the container
                child: SingleChildScrollView(
                  child: Text(
                    '''
Memulangkan jamaah umrah adalah bagian penting dari tugas tour leader, yang mencakup berbagai aspek mulai dari persiapan hingga penyambutan di negara asal. Berikut adalah tugas-tugas yang harus dilakukan oleh tour leader dalam memulangkan jamaah umrah:

1. Persiapan Sebelum Kepulangan:
Koordinasi dengan Pihak Terkait:

Berkomunikasi dengan agen perjalanan, pihak penginapan, dan maskapai penerbangan untuk mengonfirmasi jadwal kepulangan.
Mengatur transportasi dari penginapan ke bandara.
Pemeriksaan Dokumen:

Memastikan kelengkapan dokumen perjalanan jamaah seperti paspor, visa, tiket pesawat, dan boarding pass.
Menyusun dan mengatur dokumen yang diperlukan untuk proses check-in dan imigrasi di bandara.
Pembayaran dan Administrasi:

Menyelesaikan semua tagihan dan administrasi di penginapan.
Membantu jamaah menyelesaikan administrasi lainnya jika diperlukan.
Pengemasan dan Persiapan Bagasi:

Memberikan panduan kepada jamaah mengenai pengemasan barang dan batasan berat bagasi.
Mengatur penandaan bagasi untuk memudahkan identifikasi.
2. Proses Check-Out dari Penginapan:
Koordinasi Check-Out:

Mengatur waktu check-out yang sesuai dengan jadwal keberangkatan ke bandara.
Membantu jamaah dengan proses check-out dan memastikan semua barang telah dibawa.
Transportasi ke Bandara:

Menyiapkan kendaraan yang akan digunakan untuk mengantar jamaah ke bandara.
Memastikan kendaraan dalam kondisi baik dan nyaman untuk perjalanan.
3. Di Bandara:
Proses Check-In:

Membantu jamaah dengan proses check-in, termasuk penyerahan bagasi dan penerimaan boarding pass.
Memastikan semua jamaah mendapatkan tempat duduk yang sesuai dengan preferensi mereka.
Imigrasi dan Bea Cukai:

Mendampingi jamaah melalui proses imigrasi dan bea cukai.
Membantu jamaah dalam mengisi formulir yang diperlukan dan menjelaskan prosedur yang harus diikuti.
Pemberian Informasi Penting:

Memberikan informasi tentang gerbang keberangkatan, waktu boarding, dan fasilitas yang tersedia di bandara.
Menyampaikan informasi tentang durasi penerbangan dan prosedur saat tiba di negara asal.
4. Selama Menunggu di Bandara:
Pendampingan:

Menemani jamaah selama menunggu waktu boarding, memberikan dukungan dan menjawab pertanyaan yang mungkin muncul.
Memastikan jamaah tetap nyaman dan memberikan panduan mengenai fasilitas yang bisa digunakan di bandara.
Pemantauan Kesehatan dan Kenyamanan:

Memantau kondisi kesehatan jamaah, terutama jika ada yang memerlukan perhatian khusus.
Menyediakan makanan ringan atau minuman jika diperlukan selama menunggu.
5. Proses Boarding:
Pengaturan Boarding:

Mengarahkan jamaah menuju gerbang keberangkatan sesuai dengan jadwal boarding.
Memastikan semua jamaah naik ke pesawat dengan tertib.
Pemeriksaan Akhir:

Melakukan pemeriksaan akhir untuk memastikan tidak ada barang yang tertinggal.
Menyampaikan informasi terakhir kepada jamaah mengenai prosedur dalam pesawat.
6. Pendampingan Selama Perjalanan:
Dukungan Selama Penerbangan:
Jika memungkinkan, mendampingi jamaah selama penerbangan untuk memberikan bantuan jika dibutuhkan.
Memberikan informasi mengenai prosedur di bandara tujuan.
7. Proses Kepulangan di Negara Asal:
Imigrasi dan Bea Cukai di Negara Asal:

Membantu jamaah dalam proses imigrasi dan bea cukai di negara asal.
Memastikan semua jamaah melewati proses ini dengan lancar.
Penjemputan di Bandara:

Mengatur penjemputan oleh pihak keluarga atau agen perjalanan di bandara.
Memastikan semua bagasi jamaah diambil dengan aman.
Pemberian Informasi Lanjutan:

Memberikan informasi akhir kepada jamaah mengenai kontak darurat dan layanan pasca kepulangan jika diperlukan.
Menyampaikan ucapan terima kasih dan doa agar selamat sampai di rumah.
Dengan menjalankan tugas-tugas ini, tour leader memastikan bahwa jamaah merasa terlayani dengan baik, aman, dan nyaman selama proses kepulangan, sehingga mereka dapat kembali ke rumah dengan hati yang tenang dan penuh keberkahan setelah melaksanakan ibadah umrah.
                    ''',
                    style: TextStyle(
                      color: Colors.white, // White text color
                      fontSize: 16.0, // Font size for content
                      height: 1.5, // Line height for better readability
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
