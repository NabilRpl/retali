import 'package:flutter/material.dart';

class HandlingTibaDiIndonesiaScreen extends StatefulWidget {
  const HandlingTibaDiIndonesiaScreen({super.key});

  @override
  State<HandlingTibaDiIndonesiaScreen> createState() => _HandlingTibaDiIndonesiaScreenState();
}

class _HandlingTibaDiIndonesiaScreenState extends State<HandlingTibaDiIndonesiaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prosedur di Bandara Indonesia'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Prosedur Penanganan Bagasi Jamaah Umrah di Bandara Indonesia',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            Text(
              '1. Pembongkaran Bagasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pembongkaran dari Pesawat\n'
              'Membongkar bagasi dari pesawat dengan hati-hati.\n'
              'Menggunakan conveyor belt atau kendaraan khusus untuk memindahkan bagasi dari pesawat ke area klaim bagasi.',
            ),

            SizedBox(height: 16),
            Text(
              '2. Pengangkutan ke Area Klaim Bagasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pemindahan Bagasi\n'
              'Mengangkut bagasi dari pesawat ke area klaim bagasi dengan menggunakan trolley atau kendaraan khusus.\n'
              'Memastikan bagasi disusun dengan rapi dan aman selama proses pemindahan.',
            ),

            SizedBox(height: 16),
            Text(
              '3. Penyimpanan di Area Klaim Bagasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Penyusunan Bagasi\n'
              'Menyusun bagasi di area klaim bagasi dengan rapi dan mudah diakses oleh jamaah.\n'
              'Memastikan setiap bagasi berada di lokasi yang benar sesuai dengan label identifikasi.',
            ),

            SizedBox(height: 16),
            Text(
              '4. Proses Klaim Bagasi oleh Jamaah',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pengarahan Jamaah\n'
              'Mengarahkan jamaah ke area klaim bagasi setelah mereka menyelesaikan proses imigrasi dan bea cukai.\n'
              'Memberikan informasi yang jelas tentang lokasi klaim bagasi.\n\n'
              '• Bantuan kepada Jamaah\n'
              'Memberikan bantuan kepada jamaah yang membutuhkan, termasuk mengidentifikasi dan mengambil bagasi mereka.\n'
              'Memastikan setiap jamaah mendapatkan bagasi mereka dengan benar.',
            ),

            SizedBox(height: 16),
            Text(
              '5. Penanganan Bagasi Hilang atau Rusak',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Laporan Kehilangan atau Kerusakan\n'
              'Menerima laporan dari jamaah mengenai bagasi yang hilang atau rusak.\n'
              'Mencatat detail laporan dan memberikan tanda terima kepada jamaah.\n\n'
              '• Pencarian dan Penggantian\n'
              'Melakukan pencarian segera untuk menemukan bagasi yang hilang.\n'
              'Mengatur penggantian atau kompensasi sesuai dengan kebijakan bandara jika bagasi tidak ditemukan atau rusak.',
            ),

            SizedBox(height: 16),
            Text(
              '6. Pelaporan dan Dokumentasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Dokumentasi\n'
              'Mencatat semua detail terkait pembongkaran, pemindahan, dan klaim bagasi.\n'
              'Membuat laporan tertulis tentang jumlah bagasi yang dibongkar dan diklaim oleh jamaah.\n\n'
              '• Pelaporan Insiden\n'
              'Melaporkan setiap insiden atau masalah yang terjadi selama proses penanganan bagasi kepada manajemen bandara.\n'
              'Menyusun laporan tertulis tentang kejadian yang memerlukan tindak lanjut.',
            ),

            SizedBox(height: 16),
            Text(
              '7. Penyediaan Informasi dan Bantuan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pelayanan Jamaah\n'
              'Memberikan informasi yang diperlukan kepada jamaah terkait proses klaim bagasi.\n'
              'Membantu jamaah yang membutuhkan bantuan selama proses klaim bagasi.\n\n'
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