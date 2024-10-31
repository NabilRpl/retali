import 'package:flutter/material.dart';

class Handlingkeberangkatanscreen extends StatefulWidget {
  const Handlingkeberangkatanscreen({super.key});

  @override
  State<Handlingkeberangkatanscreen> createState() => _HandlingjamaahdibussampaihotelscreenState();
}

class _HandlingjamaahdibussampaihotelscreenState extends State<Handlingkeberangkatanscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penanganan Bagasi Jamaah'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Prosedur Penanganan Bagasi Jamaah Umrah Pada Saat Keberangkatan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            Text(
              '1. Persiapan dan Perencanaan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('• Briefing Tim\nMengadakan briefing untuk seluruh anggota tim handling sebelum keberangkatan jamaah.\n'
                'Memberikan informasi mengenai jumlah jamaah, jumlah bagasi, dan jadwal penerbangan.'),
            SizedBox(height: 8),
            Text('• Pemeriksaan Peralatan\nMemastikan semua peralatan penanganan bagasi (seperti trolley, conveyor belt, dan alat pemindah bagasi) dalam kondisi baik dan siap digunakan.'),

            SizedBox(height: 16),
            Text(
              '2. Check-In Bagasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('• Penerimaan Bagasi\nMenyambut jamaah umrah di counter check-in.\n'
                'Memeriksa dokumen perjalanan (tiket, paspor, visa) dan mengidentifikasi jumlah dan berat bagasi yang akan di-check-in.'),
            SizedBox(height: 8),
            Text('• Pelabelan Bagasi\nMenempelkan label identifikasi yang berisi informasi penerbangan dan pemilik pada setiap bagasi.\n'
                'Memberikan tanda terima bagasi kepada jamaah.'),
            SizedBox(height: 8),
            Text('• Pemeriksaan Keamanan\nMelakukan pemeriksaan keamanan pada setiap bagasi sesuai prosedur yang berlaku.\n'
                'Menggunakan mesin x-ray atau pemeriksaan manual jika diperlukan.'),

            SizedBox(height: 16),
            Text(
              '3. Pengangkutan ke Area Penyimpanan Sementara',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('• Pemindahan Bagasi\nMengangkut bagasi dari area check-in ke area penyimpanan sementara dengan menggunakan trolley atau kendaraan khusus.\n'
                'Memastikan bagasi disusun dengan rapi dan aman selama proses pemindahan.'),

            SizedBox(height: 16),
            Text(
              '4. Penyimpanan Sementara',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('• Penyimpanan Teratur\nMenyimpan bagasi di area penyimpanan sementara yang telah ditentukan.\n'
                'Memastikan bagasi tersusun dengan rapi dan mudah diakses untuk proses pemuatan ke pesawat.'),

            SizedBox(height: 16),
            Text(
              '5. Pengawasan Keamanan dan Keselamatan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('• Pengawasan Selama Proses Pemuatan\nMengawasi proses pemuatan bagasi untuk memastikan tidak ada bagasi yang tertinggal atau salah muat.\n'
                'Melaporkan setiap kejadian yang mencurigakan atau berpotensi membahayakan keselamatan kepada pihak keamanan bandara.'),

            SizedBox(height: 16),
            Text(
              '6. Pelaporan dan Dokumentasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('• Dokumentasi\nMencatat semua detail terkait penerimaan, penyimpanan, dan pemuatan bagasi.\n'
                'Membuat laporan tertulis tentang jumlah bagasi yang di-check-in dan dimuat ke pesawat.'),
            SizedBox(height: 8),
            Text('• Pelaporan Insiden\nMelaporkan setiap insiden atau masalah yang terjadi selama proses penanganan bagasi kepada manajemen bandara.\n'
                'Menyusun laporan tertulis tentang kejadian yang memerlukan tindak lanjut.'),

            SizedBox(height: 16),
            Text(
              '7. Penyediaan Informasi dan Bantuan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('• Pelayanan Jamaah\nMemberikan informasi yang diperlukan kepada jamaah terkait proses check-in dan klaim bagasi.\n'
                'Membantu jamaah yang membutuhkan bantuan selama proses check-in dan pemuatan bagasi.'),
            SizedBox(height: 8),
            Text('• Tanggap Darurat\nSiap memberikan bantuan dan tanggapan cepat terhadap setiap masalah atau keluhan yang diajukan oleh jamaah.\n'),

            SizedBox(height: 16),
            Text(
              'Dengan mengikuti prosedur ini, tim handling bandara dapat memastikan penanganan bagasi jamaah umrah berjalan dengan lancar, aman, dan efisien, serta memberikan pelayanan terbaik kepada jamaah.',
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}