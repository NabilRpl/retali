import 'package:flutter/material.dart';

class PersiapanDanPelaksanaanUmrohScreen extends StatefulWidget {
  const PersiapanDanPelaksanaanUmrohScreen({super.key});

  @override
  State<PersiapanDanPelaksanaanUmrohScreen> createState() => _PersiapanDanPelaksanaanUmrohScreenState();
}

class _PersiapanDanPelaksanaanUmrohScreenState extends State<PersiapanDanPelaksanaanUmrohScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prosedur Persiapan Umrah'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Prosedur Persiapan Umrah dari Hotel Mekkah ke Masjidil Haram',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '1. Pengumuman dan Persiapan Awal',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Berikan pengumuman di grup keberangkatan dan pastikan seluruh jamaah memahami titik kumpul.\n'
              '• Pastikan perlengkapan seperti HT, sandal, tas kecil, syal, ID Card, dan obat-obatan sudah siap.\n'
              '• Tour Leader dan Muthawwif memberikan briefing tentang rencana ibadah Umrah.\n'
              '• Informasikan lokasi penting sekitar Masjid, seperti rumah sakit, dan tentukan titik berkumpul.',
            ),
            SizedBox(height: 16),
            Text(
              '2. Mendampingi Prosesi Ibadah',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Tour Leader mendampingi jamaah selama rangkaian ibadah, termasuk thawaf, sa’i, dan tahallul.\n'
              '• Memberikan bimbingan dan menjawab pertanyaan terkait ibadah Umrah.\n'
              '• Memastikan semua jamaah memahami setiap rukun Umrah dengan benar.',
            ),
            SizedBox(height: 16),
            Text(
              '3. Menggunakan Shuttle Bus',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pastikan jamaah tahu lokasi dan jadwal shuttle bus dari hotel ke Masjidil Haram.\n'
              '• Jamaah dan petugas harus siap 15-30 menit sebelum keberangkatan.\n'
              '• Berikan petunjuk kepada jamaah saat turun dari bus, dan pastikan tidak berdesak-desakan.',
            ),
            SizedBox(height: 16),
            Text(
              '4. Jalan Kaki ke Masjidil Haram',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pastikan jamaah dalam kondisi fisik yang baik sebelum perjalanan.\n'
              '• Tentukan rute yang aman dan efisien menuju Masjidil Haram.\n'
              '• Berjalan tertib dan hati-hati, menghindari keramaian dan tetap bersama kelompok.',
            ),
            SizedBox(height: 16),
            Text(
              '5. Penyediaan Informasi dan Bimbingan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Sediakan informasi tentang tempat-tempat suci dan makna spiritual dari setiap ritual.\n'
              '• Berikan nasihat agar jamaah menjalankan ibadah dengan khushu’ dan konsentrasi.',
            ),
            SizedBox(height: 16),
            Text(
              '6. Pengawasan Selama Perjalanan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Awasi keberadaan jamaah selama perjalanan antara hotel dan tempat ibadah.\n'
              '• Pastikan jamaah tetap aman dan bersama kelompok untuk menghindari tersesat.',
            ),
            SizedBox(height: 16),
            Text(
              '7. Setelah Rangkaian Ibadah',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Berikan panduan mengenai tahapan setelah Umrah, termasuk tahallul.\n'
              '• Terima umpan balik dari jamaah tentang pengalaman dan saran perbaikan.',
            ),
            SizedBox(height: 16),
            Text(
              'Catatan Penting',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Tour Leader/Muthawwif harus selalu siap memberikan bimbingan dan praktek ibadah.\n'
              '• Jaga komunikasi yang baik dengan jamaah dan bantu dalam situasi yang diperlukan.',
            ),
          ],
        ),
      ),
    );
  }
}