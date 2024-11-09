import 'package:flutter/material.dart';

class MasalahHotel extends StatefulWidget {
  const MasalahHotel({super.key});

  @override
  State<MasalahHotel> createState() => _MasalahHotelState();
}

class _MasalahHotelState extends State<MasalahHotel> {
  final List<Map<String, String>> masalahHotelList = [
    {
      "masalah": "Kualitas dan Kebersihan Kamar",
      "solusi": "Melaporkan kepada manajemen hotel untuk perubahan kamar atau peningkatan layanan kebersihan.",
      "pencegahan": "Melakukan survei sebelum perjalanan untuk memeriksa kondisi kamar dan fasilitas."
    },
    {
      "masalah": "Fasilitas yang Tidak Lengkap",
      "solusi": "Menghubungi manajemen hotel untuk perbaikan atau pelengkapan fasilitas yang kurang seperti heater.",
      "pencegahan": "Memastikan ketersediaan fasilitas sebelum keberangkatan."
    },
    {
      "masalah": "Pelayanan Staf yang Kurang Ramah",
      "solusi": "Melaporkan ke manajemen hotel dan meminta bantuan staf yang lebih profesional.",
      "pencegahan": "Memilih hotel dengan reputasi baik berdasarkan ulasan."
    },
    {
      "masalah": "Keterbatasan Kamar karena Kapasitas Hotel Penuh",
      "solusi": "Berkoordinasi dengan manajemen hotel untuk mendapatkan akomodasi alternatif tanpa biaya tambahan.",
      "pencegahan": "Melakukan pemesanan kamar jauh sebelum keberangkatan dengan konfirmasi tertulis."
    },
    {
      "masalah": "Lokasi Hotel yang Tidak Strategis",
      "solusi": "Menyediakan transportasi shuttle antar-jemput yang efisien untuk memudahkan akses ke Masjid atau tempat ibadah utama.",
      "pencegahan": "Memilih hotel yang strategis dan dekat dengan lokasi yang diinginkan."
    },
    {
      "masalah": "Biaya Tambahan yang Tidak Jelas",
      "solusi": "Klarifikasi dengan manajemen hotel mengenai biaya tambahan yang tidak wajar.",
      "pencegahan": "Memastikan semua biaya dan kebijakan tertulis dalam booking confirmation."
    },
    {
      "masalah": "Tidak Cocoknya Makanan Hotel dengan Selera Jamaah",
      "solusi": "Mengumpulkan masukan dari jamaah mengenai preferensi makanan dan berkoordinasi dengan hotel untuk menyesuaikan menu.",
      "pencegahan": "Jamaah menyiapkan makanan alternatif sesuai kebutuhan pribadi."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Hotel dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahHotelList.length,
        itemBuilder: (context, index) {
          final item = masalahHotelList[index];
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
                    item["masalah"]!,
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
