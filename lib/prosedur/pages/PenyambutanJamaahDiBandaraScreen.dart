import 'package:flutter/material.dart';

class PenyambutanJamaahDiBandaraScreen extends StatefulWidget {
  const PenyambutanJamaahDiBandaraScreen({super.key});

  @override
  State<PenyambutanJamaahDiBandaraScreen> createState() => PenyambutanJamaahDiBandaraScreenState();
}

class PenyambutanJamaahDiBandaraScreenState extends State<PenyambutanJamaahDiBandaraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prosedur Penyambutan Jamaah Umrah'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Prosedur Penyambutan Jamaah Umrah',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            Text(
              '1. Penyambutan Jamaah dan Pengumpulan Koper Bagasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Jamaah tiba di titik kumpul yang telah disepakati, seperti di depan Marugame Udon atau Zukavia Resto Terminal 3.\n'
              '• Petugas menyambut jamaah dengan ramah dan memberikan salam serta informasi singkat terkait bagasi.\n'
              '• Ingatkan jamaah untuk menyerahkan paspor jika belum.\n'
              '• Tour Leader menginstruksikan petugas handling untuk membantu pengumpulan koper dan memastikan tidak ada barang terlarang.\n'
              '• Tim Handling membantu jamaah yang membutuhkan kursi roda.\n'
              '• Koper diberikan label sesuai nomor absen dan identitas jamaah.\n'
              '• Setelah koper lengkap, tim laporkan bagasi ke konter maskapai.',
            ),

            SizedBox(height: 16),
            Text(
              '2. Sesi Briefing Jamaah',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pastikan seluruh jamaah telah berkumpul sebelum briefing.\n'
              '• Tour Leader memberikan pengarahan tentang prosedur keberangkatan, jadwal, dan tata tertib perjalanan.\n'
              '• Pastikan dokumen seperti paspor dan boarding pass siap dibagikan.\n'
              '• Berikan kesempatan kepada jamaah untuk bertanya jika ada yang kurang dipahami.\n'
              '• Akhiri briefing dengan doa Kafaratul Majlis.',
            ),

            SizedBox(height: 16),
            Text(
              '3. Check-in/Profiling',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Setelah koper lengkap, Tim Handling membawa jamaah ke konter check-in.\n'
              '• Manajemen dan Tim Handling membantu proses check-in dan pengumpulan paspor.\n'
              '• Koper ditimbang dan bagasi pesawat disiapkan.\n'
              '• Pastikan semua koper terdaftar dengan benar.',
            ),

            SizedBox(height: 16),
            Text(
              '4. Sesi Foto Bersama',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Setelah check-in, jamaah diarahkan untuk sesi foto bersama dengan barisan rapi.\n'
              '• Foto dilakukan setidaknya 3 kali untuk dokumentasi.\n'
              '• Sesi video dengan jamaah menyebutkan jargon Retali “Umrah Hemat, Ibadah Nikmat, Alhamdulillah!”',
            ),

            SizedBox(height: 16),
            Text(
              '5. Masuk Imigrasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Jamaah menuju ke imigrasi untuk pemeriksaan paspor dan visa.\n'
              '• Pastikan semua jamaah lengkap sebelum masuk imigrasi dan jalankan pemeriksaan paspor serta dokumen.',
            ),

            SizedBox(height: 16),
            Text(
              '6. Menunggu di Area Keberangkatan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Jamaah diarahkan ke area keberangkatan.\n'
              '• Berikan informasi terkait gate dan waktu boarding.\n'
              '• Tour Leader memastikan semua jamaah siap dan berada di area gate yang benar.',
            ),

            SizedBox(height: 16),
            Text(
              '7. Boarding Pesawat',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Tour Leader memimpin jamaah menuju gate ketika boarding dimulai.\n'
              '• Pastikan jamaah membawa boarding pass dan dokumen.\n'
              '• Jamaah naik pesawat sesuai nomor kursi di boarding pass.',
            ),
          ],
        ),
      ),
    );
  }
}