import 'package:flutter/material.dart';

class MasalahAdministratif extends StatefulWidget {
  const MasalahAdministratif({super.key});

  @override
  State<MasalahAdministratif> createState() => _MasalahAdministratifState();
}

class _MasalahAdministratifState extends State<MasalahAdministratif> {
  final List<Map<String, String>> masalahAdministratifList = [
    {
      "masalah": "Kesalahan atau Kelalaian dalam Pengajuan Visa Ziarah",
      "solusi": "Laporkan segera ke bagian lost and found atau petugas keamanan terdekat.",
      "pencegahan": "Sediakan dokumen cadangan dan kontak darurat untuk meminta soft file visa atau pengajuan tasreh secara cepat."
    },
    {
      "masalah": "Prosedur Imigrasi yang Panjang dan Rumit",
      "solusi": "Berkoordinasi dengan petugas bandara untuk mendapatkan bantuan atau prioritas pemeriksaan.",
      "pencegahan": "Siapkan semua dokumen dan serahkan kepada tim handling untuk pemeriksaan cepat."
    },
    {
      "masalah": "Perubahan Jadwal Penerbangan dan Bus",
      "solusi": "Cari alternatif transportasi dan informasikan peserta tentang kemungkinan perubahan jadwal.",
      "pencegahan": "Pastikan konfirmasi tiket penerbangan dan atur jadwal transportasi dengan cadangan waktu yang cukup."
    },
    {
      "masalah": "Kesalahan Booking Hotel dan Fasilitas Tidak Sesuai",
      "solusi": "Hubungi manajemen hotel untuk mengonfirmasi dan ubah pemesanan jika memungkinkan.",
      "pencegahan": "Adakan pertemuan dengan pihak hotel sebelum keberangkatan dan tinjau fasilitas yang disediakan."
    },
    {
      "masalah": "Muthawwif/Guide Tidak Bersama Jamaah",
      "solusi": "Miliki kontak darurat muthawwif atau guide lain untuk menggantikan jika diperlukan.",
      "pencegahan": "Pastikan komunikasi dan kesepakatan tertulis dengan muthawwif atau guide melalui TTD akad kerja."
    },
    {
      "masalah": "Pembengkakan Biaya Operasional",
      "solusi": "Petugas memberikan laporan keuangan yang transparan dan sediakan dana cadangan untuk keadaan darurat.",
      "pencegahan": "Susun anggaran yang detail dan realistis sesuai dengan kebutuhan di Tanah Suci."
    },
    {
      "masalah": "Kegiatan Tidak Sesuai Itinerary",
      "solusi": "Hubungi manajemen dan susun rencana alternatif, serta komunikasikan dengan jelas kepada jamaah.",
      "pencegahan": "Rencanakan program dengan waktu cadangan yang cukup dan pertimbangkan kondisi lokal."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Administratif dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahAdministratifList.length,
        itemBuilder: (context, index) {
          final item = masalahAdministratifList[index];
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