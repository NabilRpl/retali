import 'package:flutter/material.dart';

class MasalahTeknologi extends StatefulWidget {
  const MasalahTeknologi({super.key});

  @override
  State<MasalahTeknologi> createState() => _MasalahTeknologiState();
}

class _MasalahTeknologiState extends State<MasalahTeknologi> {
  final List<Map<String, String>> masalahTeknologiList = [
    {
      "masalah": "Baterai Habis di Tengah Jalan",
      "solusi": "Bawa power bank sebagai cadangan untuk mengisi daya perangkat.",
      "pencegahan": "Pastikan semua perangkat terisi penuh sebelum berangkat."
    },
    {
      "masalah": "Kesulitan Menggunakan Aplikasi Penerjemah",
      "solusi": "Pelajari cara penggunaan aplikasi penerjemah sebelumnya.",
      "pencegahan": "Latih penggunaan aplikasi sebelum perjalanan."
    },
    {
      "masalah": "Cuaca Ekstrem (Terlalu Panas atau Dingin)",
      "solusi": "Bawa perlengkapan sesuai cuaca seperti jaket atau payung.",
      "pencegahan": "Informasikan jamaah mengenai kondisi cuaca."
    },
    {
      "masalah": "Masalah Koneksi Internet di Penginapan",
      "solusi": "Gunakan data seluler atau cari WiFi publik.",
      "pencegahan": "Pilih penginapan dengan koneksi internet yang baik."
    },
    {
      "masalah": "Kerusakan Perangkat Elektronik",
      "solusi": "Bawa perangkat cadangan atau cari tempat servis terdekat.",
      "pencegahan": "Gunakan casing tambahan dan simpan perangkat dengan aman."
    },
    {
      "masalah": "Kesulitan Menggunakan GPS",
      "solusi": "Pelajari peta manual atau hafalkan rute sebagai cadangan.",
      "pencegahan": "Download peta offline dan pelajari rute sebelum berangkat."
    },
    {
      "masalah": "Kesalahan dalam Penggunaan Aplikasi Nusuk",
      "solusi": "Minta bantuan dari Tour Leader atau Muthawwif.",
      "pencegahan": "Pelajari aplikasi Nusuk sebelum perjalanan."
    },
    {
      "masalah": "Kehilangan Handphone",
      "solusi": "Laporkan kehilangan dan gunakan fitur pelacakan.",
      "pencegahan": "Simpan handphone di tempat aman dan aktifkan fitur pelacakan."
    },
    {
      "masalah": "Masalah dengan Power Bank atau Charger",
      "solusi": "Bawa power bank atau charger cadangan.",
      "pencegahan": "Periksa semua perangkat charging sebelum perjalanan."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Teknologi dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahTeknologiList.length,
        itemBuilder: (context, index) {
          final item = masalahTeknologiList[index];
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
                      color: const Color.fromARGB(255, 78, 29, 87),
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