import 'package:flutter/material.dart';

class MasalahKeamanan extends StatefulWidget {
  const MasalahKeamanan({super.key});

  @override
  State<MasalahKeamanan> createState() => _MasalahKeamananState();
}

class _MasalahKeamananState extends State<MasalahKeamanan> {
  final List<Map<String, String>> masalahKeamananList = [
    {
      "masalah": "Jamaah Kecopetan",
      "solusi": "Laporkan segera ke bagian lost and found atau petugas keamanan terdekat.",
      "pencegahan": "Gunakan tas yang aman dan jangan simpan barang berharga di tempat yang mudah diakses."
    },
    {
      "masalah": "Jamaah Kecelakaan",
      "solusi": "Hubungi Muthawwif atau kabari ke Manajemen lalu segera cari bantuan medis.",
      "pencegahan": "Selalu berhati-hati saat menyebrang dan selalu ikuti aturan lalu lintas."
    },
    {
      "masalah": "Kebakaran di Penginapan",
      "solusi": "Ikuti jalur evakuasi dan petunjuk dari petugas atau pegawai hotel.",
      "pencegahan": "Jangan menyalakan api di kamar hotel dan ketahui lokasi jalur evakuasi serta alat pemadam kebakaran."
    },
    {
      "masalah": "Perang atau Terorisme",
      "solusi": "Ikuti arahan otoritas dan evakuasi jika diperlukan.",
      "pencegahan": "Hindari tempat-tempat yang dianggap berisiko tinggi."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Keamanan dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahKeamananList.length,
        itemBuilder: (context, index) {
          final item = masalahKeamananList[index];
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
