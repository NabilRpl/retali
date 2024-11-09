import 'package:flutter/material.dart';

class MasalahKesehatan extends StatefulWidget {
  const MasalahKesehatan({super.key});

  @override
  State<MasalahKesehatan> createState() => _MasalahKesehatanState();
}

class _MasalahKesehatanState extends State<MasalahKesehatan> {
  final List<Map<String, String>> masalahKesehatanList = [
    {
      "masalah": "Dehidrasi",
      "solusi": "Segera beristirahat dan mencari tempat untuk minum.",
      "pencegahan": "Jangan terlalu cepat dalam berjalan, gunakan pakaian yang ringan."
    },
    {
      "masalah": "Kelelahan",
      "solusi": "Istirahat yang cukup, berikan Vit B Kompleks untuk memulihkan energi.",
      "pencegahan": "Jangan forsir ibadah dan berjalan-jalan terlalu banyak."
    },
    {
      "masalah": "Gangguan Pencernaan",
      "solusi": "Konsumsi obat antidiare atau antasida.",
      "pencegahan": "Hindari makanan pedas atau tidak higienis, kurangi jajan sembarangan."
    },
    // Tambahkan data lainnya sesuai kebutuhan...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Kesehatan dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahKesehatanList.length,
        itemBuilder: (context, index) {
          final item = masalahKesehatanList[index];
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