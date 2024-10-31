import 'package:flutter/material.dart';

class MasalahKomunikasi extends StatefulWidget {
  const MasalahKomunikasi({super.key});

  @override
  State<MasalahKomunikasi> createState() => _MasalahKomunikasiState();
}

class _MasalahKomunikasiState extends State<MasalahKomunikasi> {
  final List<Map<String, String>> masalahKomunikasiList = [
    {
      "masalah": "Masalah Perbedaan Bahasa",
      "solusi": "Gunakan aplikasi penerjemah untuk mempermudah komunikasi dengan penduduk setempat.",
      "pencegahan": "Pelajari kata-kata dasar dalam bahasa Arab atau Inggris sebelum perjalanan."
    },
    {
      "masalah": "Jaringan Internet yang Buruk",
      "solusi": "Cari tempat dengan koneksi internet lebih stabil, seperti di hotel atau kafe dengan Wi-Fi.",
      "pencegahan": "Beli SIM card lokal yang memiliki jaringan kuat atau gunakan layanan roaming yang andal."
    },
    {
      "masalah": "Menghubungi Keluarga",
      "solusi": "Gunakan aplikasi komunikasi seperti WhatsApp, Google Meet, atau Zoom.",
      "pencegahan": "Tentukan waktu komunikasi dengan keluarga sebelum berangkat dan siapkan perangkat serta aplikasi."
    },
    {
      "masalah": "Mencari Informasi Lokal",
      "solusi": "Tanyakan pada penduduk lokal atau petugas informasi di area yang dikunjungi.",
      "pencegahan": "Bawa buku panduan atau unduh aplikasi atau peta dengan informasi penting sebelum berangkat."
    },
    {
      "masalah": "Komunikasi dengan Sopir",
      "solusi": "Pastikan tour leader atau Muthawwif bisa berkomunikasi atau gunakan aplikasi penerjemah.",
      "pencegahan": "Pastikan Muthawwif ikut atau pilih sopir yang bisa berbahasa Indonesia atau bahasa yang jamaah pahami."
    },
    {
      "masalah": "Perbedaan Ekspektasi Jamaah dan Tour Leader",
      "solusi": "Lakukan dialog terbuka untuk menjelaskan situasi dan menyesuaikan ekspektasi.",
      "pencegahan": "Berikan penjelasan lengkap tentang program umrah dan paket perjalanan sebelum keberangkatan."
    },
    {
      "masalah": "Konflik Antarjamaah",
      "solusi": "Tour leader harus berperan sebagai mediator untuk menyelesaikan konflik secara objektif.",
      "pencegahan": "Adakan sesi perkenalan dan pembekalan sebelum perjalanan untuk mempererat kebersamaan."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Komunikasi dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahKomunikasiList.length,
        itemBuilder: (context, index) {
          final item = masalahKomunikasiList[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Masalah: ${item["masalah"]}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Solusi: ${item["solusi"]}",
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Pencegahan: ${item["pencegahan"]}",
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}