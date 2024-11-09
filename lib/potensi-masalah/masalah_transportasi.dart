import 'package:flutter/material.dart';

class MasalahTransportasi extends StatefulWidget {
  const MasalahTransportasi({super.key});

  @override
  State<MasalahTransportasi> createState() => _MasalahTransportasiState();
}

class _MasalahTransportasiState extends State<MasalahTransportasi> {
  final List<Map<String, String>> masalahTransportasiList = [
    {
      "masalah": "Keterlambatan Transportasi",
      "solusi": "Berkoordinasi dengan supir bus untuk memastikan jadwal ketibaan bus di tempat jamaah.",
      "pencegahan": "Memilih jadwal transportasi yang menyediakan waktu luang untuk mengatasi kemungkinan keterlambatan."
    },
    {
      "masalah": "Masalah Teknis pada Kendaraan",
      "solusi": "Memiliki akses ke layanan bengkel darurat dan menyediakan kendaraan pengganti jika diperlukan.",
      "pencegahan": "Muassasah memeriksa kondisi kendaraan secara berkala dan memilih muassasah yang memiliki rekam jejak yang baik."
    },
    {
      "masalah": "Jamaah tidak Disiplin dalam Mematuhi Jadwal Transportasi",
      "solusi": "Komunikasi melalui grup WhatsApp atau pengumuman langsung untuk mengingatkan jamaah tentang jadwal transportasi.",
      "pencegahan": "Mengedukasi jamaah tentang pentingnya disiplin waktu dan memberikan briefing jadwal secara jelas sebelum keberangkatan."
    },
    {
      "masalah": "Kesulitan Akses ke Tempat Ibadah",
      "solusi": "Menggunakan taksi atau shuttle yang tidak mengikuti jalur umum untuk memudahkan akses ke tempat ibadah.",
      "pencegahan": "Mengidentifikasi rute atau kendaraan alternatif seperti taksi pada jam sibuk."
    },
    {
      "masalah": "Kesulitan dalam Berkomunikasi dengan Sopir",
      "solusi": "Membekali tour leader atau muthawwif dengan kemampuan bahasa yang diperlukan.",
      "pencegahan": "Memilih sopir yang dapat berkomunikasi dalam bahasa Indonesia atau memastikan muthawwif ikut di dalam bus jamaah."
    },
    {
      "masalah": "Kemacetan",
      "solusi": "Mencari rute alternatif atau berangkat lebih awal untuk menghindari kemacetan.",
      "pencegahan": "Mempelajari rute dan kondisi lalu lintas sebelum berangkat."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Transportasi dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahTransportasiList.length,
        itemBuilder: (context, index) {
          final item = masalahTransportasiList[index];
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