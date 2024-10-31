import 'package:flutter/material.dart';

class Handlingjamaahdibussampaihotelscreen extends StatefulWidget {
  const Handlingjamaahdibussampaihotelscreen({super.key});

  @override
  State<Handlingjamaahdibussampaihotelscreen> createState() => _HandlingjamaahdibussampaihotelscreenState();
}

class _HandlingjamaahdibussampaihotelscreenState extends State<Handlingjamaahdibussampaihotelscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penyambutan Jamaah Umrah'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Prosedur Penyambutan Jamaah Umrah di Bandara Saudi hingga Hotel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            Text(
              '1. Penyambutan di Bandara Saudi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Disaat Tour Leader mengecek kelengkapan bagasi, hubungi Muthawwif.\n'
              '• Tour Leader memastikan jamaah lengkap dan berada di jalur yang benar menuju Muthawwif.\n'
              '• Tour Leader memberi instruksi kepada Muthawwif untuk menyambut jamaah di pintu kedatangan dengan ramah.\n'
              '• Jamaah bertemu dengan Muthawwif dan dikumpulkan di titik temu yang disepakati di dalam bandara.',
            ),

            SizedBox(height: 16),
            Text(
              '2. Menuju Transportasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Jamaah diarahkan ke area parkir atau stasiun kereta cepat sesuai transportasi (bus atau kereta cepat).\n'
              '• Tour Leader dan Muthawwif memastikan semua jamaah berada dalam satu rombongan.\n'
              '• Koper jamaah diangkut ke dalam kendaraan yang disiapkan.\n'
              '• Tour Leader menyusul jamaah setelah urusan koper selesai.',
            ),

            SizedBox(height: 16),
            Text(
              '3. Briefing Singkat',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Tour Leader mengingatkan Muthawwif untuk menyambut jamaah di bus dan memperkenalkan diri.\n'
              '• Tour Leader membantu Muthawwif membagikan makanan kepada jamaah jika memungkinkan.\n'
              '• Tour Leader memberikan briefing singkat mengenai prosedur selanjutnya.\n'
              '• Jamaah diberikan informasi terkait transportasi, jadwal, dan estimasi waktu tiba di hotel.\n'
              '• Jamaah diberikan waktu untuk bertanya jika ada yang belum dipahami.',
            ),

            SizedBox(height: 16),
            Text(
              '4. Perjalanan ke Hotel',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Menggunakan Bus:\n'
              '• Jamaah naik bus yang disiapkan.\n'
              '• Tour Leader memastikan jamaah duduk nyaman dan memberikan informasi tentang durasi perjalanan.\n'
              '• Selama perjalanan, Muthawwif memberikan informasi tentang tempat-tempat yang dilalui dan persiapan sebelum tiba di hotel.\n\n'
              'Menggunakan Kereta Cepat:\n'
              '• Jamaah menuju stasiun kereta cepat di bandara.\n'
              '• Tour Leader membantu jamaah memasuki kereta dan memastikan semua jamaah duduk di tempat yang ditentukan.\n'
              '• Selama perjalanan, Muthawwif memberikan informasi tambahan tentang tempat-tempat yang akan dilalui dan persiapan sebelum tiba di hotel.',
            ),

            SizedBox(height: 16),
            Text(
              '5. Tiba di Hotel',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Setibanya di hotel, jamaah diarahkan keluar kendaraan oleh Tour Leader.\n'
              '• Tour Leader dibantu Muthawwif dalam proses check-in di resepsionis hotel.\n'
              '• Pembagian kunci kamar dan mengirimkan kembali aturan perjalanan yang berisi aturan kamar.\n'
              '• Jamaah diberikan kunci kamar dan informasi mengenai fasilitas hotel dan jadwal ibadah.\n'
              '• Tour Leader/Muthawwif menghubungi Porter untuk mengantar koper jamaah ke kamar masing-masing.',
            ),
          ],
        ),
      ),
    );
  }
}