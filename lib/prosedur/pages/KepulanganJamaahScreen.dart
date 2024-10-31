import 'package:flutter/material.dart';

class Kepulanganjamaahscreen extends StatefulWidget {
  const Kepulanganjamaahscreen({super.key});

  @override
  State<Kepulanganjamaahscreen> createState() => _KepulanganjamaahscreenState();
}

class _KepulanganjamaahscreenState extends State<Kepulanganjamaahscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prosedur Kepulangan Jamaah Umrah'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Prosedur Penanganan Bagasi Jamaah Umrah Saat Kepulangan dari Bandara Saudi ke Bandara Indonesia',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            Text(
              '1. Persiapan dan Koordinasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Briefing Tim\n'
              'Mengadakan briefing untuk seluruh anggota tim handling sebelum keberangkatan jamaah.\n'
              'Memberikan informasi mengenai jumlah jamaah, jumlah bagasi, dan jadwal penerbangan.\n\n'
              '• Pemeriksaan Peralatan\n'
              'Memastikan semua peralatan penanganan bagasi (seperti trolley, conveyor belt, dan alat pemindah bagasi) dalam kondisi baik dan siap digunakan.',
            ),

            SizedBox(height: 16),
            Text(
              '2. Check-In Bagasi di Bandara Saudi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Penerimaan Bagasi\n'
              'Menyambut jamaah umrah di counter check-in.\n'
              'Memeriksa dokumen perjalanan (tiket, paspor, visa) dan mengidentifikasi jumlah dan berat bagasi yang akan di-check-in.\n\n'
              '• Pelabelan Bagasi\n'
              'Menempelkan label identifikasi yang berisi informasi penerbangan dan pemilik pada setiap bagasi.\n'
              'Memberikan tanda terima bagasi kepada jamaah.\n\n'
              '• Pemeriksaan Keamanan\n'
              'Melakukan pemeriksaan keamanan pada setiap bagasi sesuai prosedur yang berlaku.\n'
              'Menggunakan mesin x-ray atau pemeriksaan manual jika diperlukan.',
            ),

            SizedBox(height: 16),
            Text(
              '3. Pengangkutan ke Area Penyimpanan Sementara',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pemindahan Bagasi\n'
              'Mengangkut bagasi dari area check-in ke area penyimpanan sementara dengan menggunakan trolley atau kendaraan khusus.\n'
              'Memastikan bagasi disusun dengan rapi dan aman selama proses pemindahan.',
            ),

            SizedBox(height: 16),
            Text(
              '4. Penyimpanan Sementara',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Penyimpanan Teratur\n'
              'Menyimpan bagasi di area penyimpanan sementara yang telah ditentukan.\n'
              'Memastikan bagasi tersusun dengan rapi dan mudah diakses untuk proses pemuatan ke pesawat.',
            ),

            SizedBox(height: 16),
            Text(
              '5. Pemuatan ke Pesawat',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pengangkutan ke Pesawat\n'
              'Mengangkut bagasi dari area penyimpanan sementara ke pesawat ketika waktu pemuatan tiba.\n'
              'Menggunakan conveyor belt atau kendaraan khusus untuk memindahkan bagasi.\n\n'
              '• Pemuatan ke Dalam Pesawat\n'
              'Memuat bagasi ke dalam kompartemen bagasi pesawat sesuai dengan urutan yang telah ditentukan.\n'
              'Memastikan bagasi disusun dengan aman untuk menghindari kerusakan selama penerbangan.',
            ),

            SizedBox(height: 16),
            Text(
              '6. Pengawasan Keamanan dan Keselamatan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pengawasan Selama Proses Pemuatan\n'
              'Mengawasi proses pemuatan bagasi untuk memastikan tidak ada bagasi yang tertinggal atau salah muat.\n'
              'Melaporkan setiap kejadian yang mencurigakan atau berpotensi membahayakan keselamatan kepada pihak keamanan bandara.',
            ),

            SizedBox(height: 16),
            Text(
              '7. Pelaporan dan Dokumentasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Dokumentasi\n'
              'Mencatat semua detail terkait penerimaan, penyimpanan, dan pemuatan bagasi.\n'
              'Membuat laporan tertulis tentang jumlah bagasi yang di-check-in dan dimuat ke pesawat.\n\n'
              '• Pelaporan Insiden\n'
              'Melaporkan setiap insiden atau masalah yang terjadi selama proses penanganan bagasi kepada manajemen bandara.\n'
              'Menyusun laporan tertulis tentang kejadian yang memerlukan tindak lanjut.',
            ),

            SizedBox(height: 16),
            Text(
              '8. Penyediaan Informasi dan Bantuan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pelayanan Jamaah\n'
              'Memberikan informasi yang diperlukan kepada jamaah terkait proses check-in dan klaim bagasi.\n'
              'Membantu jamaah yang membutuhkan bantuan selama proses check-in dan pemuatan bagasi.\n\n'
              '• Tanggap Darurat\n'
              'Siap memberikan bantuan dan tanggapan cepat terhadap setiap masalah atau keluhan yang diajukan oleh jamaah.\n\n'
              'Dengan mengikuti prosedur ini, tim handling bandara dapat memastikan penanganan bagasi jamaah umrah berjalan dengan lancar, aman, dan efisien, serta memberikan pelayanan terbaik kepada jamaah saat kembali dari Saudi ke Indonesia.',
            ),
          ],
        ),
      ),
    );
  }
}