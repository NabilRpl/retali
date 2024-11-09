import 'package:flutter/material.dart';

class PengantaranJamaahKeRaudhahScreen extends StatefulWidget {
  const PengantaranJamaahKeRaudhahScreen({super.key});

  @override
  State<PengantaranJamaahKeRaudhahScreen> createState() => _PengantaranJamaahKeRaudhahScreenState();
}

class _PengantaranJamaahKeRaudhahScreenState extends State<PengantaranJamaahKeRaudhahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prosedur Pengantaran Jamaah ke Raudhah'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Prosedur Pengantaran Jamaah ke Raudhah di Masjid Nabawi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            Text(
              '1. Pemeriksaan Persiapan Jamaah',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pastikan semua jamaah telah bersiap dengan pakaian yang sesuai dan mengetahui jadwal untuk mengunjungi Raudhah.\n'
              '• Verifikasi bahwa setiap jamaah memakai ID Card Siskopatuh untuk keperluan identitas.\n'
              '• Pastikan tasreh Raudhah (izin masuk) sudah disiapkan dan valid untuk setiap jamaah.',
            ),

            SizedBox(height: 16),
            Text(
              '2. Briefing Sebelum Keberangkatan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Adakan briefing untuk menjelaskan pentingnya Raudhah, tata cara berdoa, dan aturan-aturan yang berlaku.\n'
              '• Pastikan semua jamaah memiliki tasreh Raudhah yang sah dan siap digunakan.',
            ),

            SizedBox(height: 16),
            Text(
              '3. Koordinasi Dengan Muthawwifah (Khusus Jamaah Akhwat)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pastikan Muthawwifah terjadwal untuk mengantar jamaah dari hotel ke Raudhah di Masjid Nabawi.',
            ),

            SizedBox(height: 16),
            Text(
              '4. Penyediaan Informasi dan Bimbingan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Berikan informasi mengenai sejarah Raudhah, isinya, dan pentingnya berdoa di sana.\n'
              '• Berikan bimbingan ibadah untuk mempersiapkan hati dan pikiran sebelum memasuki Raudhah.',
            ),

            SizedBox(height: 16),
            Text(
              '5. Pengawasan Jamaah',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Awasi jamaah menuju Raudhah dan pastikan mereka dalam keadaan baik dan aman.\n'
              '• Tetap bersama rombongan untuk memastikan tidak ada jamaah yang tersesat atau mengalami kesulitan.',
            ),

            SizedBox(height: 16),
            Text(
              '6. Keamanan dan Barang Bawaan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Pastikan barang pribadi jamaah aman selama perjalanan dan di dalam Masjid Nabawi.\n'
              '• Ingatkan jamaah untuk menjaga kebersihan dan ketertiban serta menghormati tempat suci.',
            ),

            SizedBox(height: 16),
            Text(
              '7. Monitoring dan Evaluasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Monitor kegiatan jamaah di Raudhah untuk memastikan semua berjalan lancar.\n'
              '• Evaluasi pengalaman jamaah setelah selesai beribadah untuk meningkatkan pelayanan di masa mendatang.',
            ),

            SizedBox(height: 16),
            Text(
              'Catatan Penting',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Tour Leader harus siap memberikan bimbingan dan nasihat dalam setiap tahapan perjalanan dan ibadah.\n'
              '• Pastikan komunikasi yang baik dengan jamaah untuk menjawab pertanyaan atau mengatasi kekhawatiran sebelum dan selama perjalanan ke Raudhah.',
            ),
          ],
        ),
      ),
    );
  }
}