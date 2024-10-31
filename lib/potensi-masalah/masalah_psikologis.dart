import 'package:flutter/material.dart';

class MasalahPsikologis extends StatefulWidget {
  const MasalahPsikologis({super.key});

  @override
  State<MasalahPsikologis> createState() => _MasalahPsikologisState();
}

class _MasalahPsikologisState extends State<MasalahPsikologis> {
  final List<Map<String, String>> masalahPsikologisList = [
    {
      "masalah": "Rasa Takut atau Cemas",
      "solusi": "Buka sesi curhat dan ajak jamaah untuk berbicara dengan sesama jamaah atau pembimbing.",
      "pencegahan": "Persiapkan mental dan spiritual sebelum perjalanan dengan mengikuti kajian atau pembekalan rohani."
    },
    {
      "masalah": "Kebingungan di Tempat Baru",
      "solusi": "Minta bantuan dari petugas atau orang yang berpengalaman untuk menjelaskan hal-hal yang belum diketahui.",
      "pencegahan": "Pelajari peta dan tata letak tempat-tempat penting sebelum berangkat."
    },
    {
      "masalah": "Kerinduan pada Keluarga",
      "solusi": "Sering berkomunikasi dengan keluarga melalui telepon atau aplikasi video call.",
      "pencegahan": "Atur jadwal komunikasi dengan keluarga sebelum berangkat."
    },
    {
      "masalah": "Jamaah Mengalami Stres",
      "solusi": "Ajak jamaah untuk melakukan ibadah yang menenangkan seperti zikir dan doa.",
      "pencegahan": "Buat jadwal ibadah yang fleksibel dan beri waktu istirahat yang cukup."
    },
    {
      "masalah": "Kesulitan Beradaptasi dengan Budaya Lokal",
      "solusi": "Ajak jamaah untuk terbuka dan menghargai budaya setempat.",
      "pencegahan": "Pelajari budaya lokal seperti tata cara berpakaian dan sopan santun."
    },
    {
      "masalah": "Kehilangan Fokus atau Motivasi Ibadah",
      "solusi": "Berikan motivasi tambahan dan dukungan moral kepada jamaah.",
      "pencegahan": "Tetapkan tujuan ibadah yang jelas dan dorong jamaah untuk tetap fokus."
    },
    {
      "masalah": "Jamaah Merasa Bersalah karena Tidak Maksimal dalam Beribadah",
      "solusi": "Berikan bimbingan agama dan dukungan moral yang positif.",
      "pencegahan": "Dukung jamaah dalam setiap usaha ibadah mereka."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Psikologis dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahPsikologisList.length,
        itemBuilder: (context, index) {
          final item = masalahPsikologisList[index];
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
                      color: Colors.deepPurple[700],
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