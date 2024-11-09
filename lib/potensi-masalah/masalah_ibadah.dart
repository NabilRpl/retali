import 'package:flutter/material.dart';

class MasalahIbadah extends StatefulWidget {
  const MasalahIbadah({super.key});

  @override
  State<MasalahIbadah> createState() => _MasalahIbadahState();
}

class _MasalahIbadahState extends State<MasalahIbadah> {
  final List<Map<String, String>> masalahIbadahList = [
    {
      "kategori": "Masalah Umum",
      "masalah": "Antrian Panjang di Raudhah, Masjid Nabawi, dan Haram",
      "solusi": "Ikuti antrian dengan sabar dan manfaatkan waktu untuk berdoa.",
      "pencegahan": "Kunjungi Masjid di luar jam sibuk jika memungkinkan."
    },
    {
      "kategori": "Masalah Saat Miqat",
      "masalah": "Ketidakpahaman Tentang Rukun dan Larangan Ihram",
      "solusi": "Jelaskan kepada jamaah tentang rukun dan larangan ihram.",
      "pencegahan": "Sarankan jamaah untuk mengikuti manasik Umrah sebelum berangkat dan baca panduan Umrah."
    },
    {
      "kategori": "Masalah Saat Thawaf",
      "masalah": "Crowded dan Desak-desakan",
      "solusi": "Thawaf di waktu yang lebih sepi atau lebih dekat dengan dinding luar.",
      "pencegahan": "Pilih waktu yang tidak terlalu ramai dan tetap tenang."
    },
    {
      "kategori": "Masalah Saat Sa’i",
      "masalah": "Kepadatan dan Berdesakan di Area Sa’i",
      "solusi": "Tour Leader harus tetap bersama rombongan dan saling menjaga.",
      "pencegahan": "Melakukan sa’i pada waktu yang kurang padat seperti tengah malam atau dini hari."
    },
    {
      "kategori": "Masalah Saat Tahallul",
      "masalah": "Antrian Panjang dan Waktu Tunggu Lama",
      "solusi": "Pilih tukang cukur yang lebih sedikit antriannya.",
      "pencegahan": "Tahallul di tempat yang waktu cukurnya singkat atau bawa alat cukur pribadi."
    },
    {
      "kategori": "Masalah Tasreh Raudhah",
      "masalah": "Keterlambatan atau Penolakan Pengajuan Tasreh",
      "solusi": "Mencari penjual tasreh agar jamaah bisa masuk raudhah.",
      "pencegahan": "Mengajukan tasreh Raudhah jauh hari sebelum keberangkatan."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Ibadah dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahIbadahList.length,
        itemBuilder: (context, index) {
          final item = masalahIbadahList[index];
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
                    item["kategori"]!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Masalah: ${item["masalah"]}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:const Color.fromARGB(255, 78, 29, 87),
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