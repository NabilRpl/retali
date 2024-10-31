import 'package:flutter/material.dart';

class HandlingKetibaanScreen extends StatelessWidget {
  const HandlingKetibaanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Handling Ketibaan'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Prosedur Penanganan Bagasi Jamaah Umrah Pada Saat Tiba di Bandara Saudi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            Text(
              '1. Persiapan dan Koordinasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
                '• Briefing Tim\nMengadakan briefing untuk seluruh anggota tim handling sebelum kedatangan jamaah.\n'
                'Memberikan informasi mengenai jumlah jamaah, jumlah bagasi, dan jadwal kedatangan penerbangan.'),
            SizedBox(height: 8),
            Text(
                '• Pemeriksaan Peralatan\nMemastikan semua peralatan penanganan bagasi (seperti trolley, conveyor belt, dan alat pemindah bagasi) dalam kondisi baik dan siap digunakan.'),

            SizedBox(height: 16),
            Text(
              '2. Penyimpanan di Area Klaim Bagasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
                '• Penyusunan Bagasi\nMenyusun bagasi di area klaim bagasi dengan rapi dan mudah diakses oleh jamaah.\n'
                'Memastikan setiap bagasi berada di lokasi yang benar sesuai dengan label identifikasi.'),

            SizedBox(height: 16),
            Text(
              '3. Proses Klaim Bagasi oleh Jamaah',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
                '• Pengarahan Jamaah\nMengarahkan jamaah ke area klaim bagasi setelah mereka menyelesaikan proses imigrasi dan bea cukai.\n'
                'Memberikan informasi yang jelas tentang lokasi klaim bagasi.'),
            SizedBox(height: 8),
            Text(
                '• Bantuan kepada Jamaah\nMemberikan bantuan kepada jamaah yang membutuhkan, termasuk mengidentifikasi dan mengambil bagasi mereka.\n'
                'Memastikan setiap jamaah mendapatkan bagasi mereka dengan benar.'),

            SizedBox(height: 16),
            Text(
              '4. Penanganan Bagasi Hilang atau Rusak',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
                '• Laporan Kehilangan atau Kerusakan\nMenerima laporan dari jamaah mengenai bagasi yang hilang atau rusak.\n'
                'Mencatat detail laporan dan memberikan tanda terima kepada jamaah.'),
            SizedBox(height: 8),
            Text(
                '• Pencarian dan Penggantian\nMelakukan pencarian segera untuk menemukan bagasi yang hilang.\n'
                'Mengatur penggantian atau kompensasi sesuai dengan kebijakan bandara jika bagasi tidak ditemukan atau rusak.'),

            SizedBox(height: 16),
            Text(
              '5. Pelaporan dan Dokumentasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
                '• Dokumentasi\nMencatat semua detail terkait pembongkaran, pemindahan, dan klaim bagasi.\n'
                'Membuat laporan tertulis tentang jumlah bagasi yang dibongkar dan diklaim oleh jamaah.'),
            SizedBox(height: 8),
            Text(
                '• Pelaporan Insiden\nMelaporkan setiap insiden atau masalah yang terjadi selama proses penanganan bagasi kepada manajemen bandara.\n'
                'Menyusun laporan tertulis tentang kejadian yang memerlukan tindak lanjut.'),

            SizedBox(height: 16),
            Text(
              '6. Penyediaan Informasi dan Bantuan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
                '• Pelayanan Jamaah\nMemberikan informasi yang diperlukan kepada jamaah terkait proses klaim bagasi.\n'
                'Membantu jamaah yang membutuhkan bantuan selama proses klaim bagasi.'),
            SizedBox(height: 8),
            Text(
                '• Tanggap Darurat\nSiap memberikan bantuan dan tanggapan cepat terhadap setiap masalah atau keluhan yang diajukan oleh jamaah.\n'),

            SizedBox(height: 16),
            Text(
              'Dengan mengikuti prosedur ini, tim handling bandara dapat memastikan penanganan bagasi jamaah umrah berjalan dengan lancar, aman, dan efisien, serta memberikan pelayanan terbaik kepada jamaah saat tiba di bandara Saudi.',
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}