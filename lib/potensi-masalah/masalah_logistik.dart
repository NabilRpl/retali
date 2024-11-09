import 'package:flutter/material.dart';

class MasalahLogistik extends StatefulWidget {
  const MasalahLogistik({super.key});

  @override
  State<MasalahLogistik> createState() => _MasalahLogistikState();
}

class _MasalahLogistikState extends State<MasalahLogistik> {
  final List<Map<String, String>> masalahLogistikList = [
    {
      "masalah": "Kehilangan Bagasi",
      "solusi": "Laporkan segera ke bagian lost and found, berikan label bagasi dan boarding pass jamaah terkait.",
      "pencegahan": "Tandai bagasi dengan tanda khusus dan simpan label bagasi serta boarding pass dengan baik."
    },
    {
      "masalah": "Tiket Pesawat/Boarding Pass Hilang",
      "solusi": "Hubungi maskapai penerbangan dan minta untuk mencetak ulang tiket.",
      "pencegahan": "Simpan tiket/boarding pass di tempat aman dan buat salinan digital."
    },
    {
      "masalah": "Tertinggal Pesawat",
      "solusi": "Cari penerbangan pengganti jika memungkinkan.",
      "pencegahan": "Datang ke bandara 4 jam sebelum penerbangan."
    },
    {
      "masalah": "Paspor Hilang",
      "solusi": "Laporkan kepada manajemen dan kunjungi kedutaan/KJRI terdekat jika memungkinkan.",
      "pencegahan": "Simpan paspor di tempat aman dan miliki salinan digital."
    },
    {
      "masalah": "Akomodasi Tidak Sesuai",
      "solusi": "Komplain ke manajemen hotel untuk meminta fasilitas yang kurang.",
      "pencegahan": "Dapatkan konfirmasi booking sebelum tiba di hotel."
    },
    {
      "masalah": "Kehilangan Dompet atau Uang",
      "solusi": "Laporkan ke polisi dan blokir kartu ATM.",
      "pencegahan": "Bawa uang tunai secukupnya dan hindari membawa dompet saat ibadah."
    },
    {
      "masalah": "Tersesat dan Terpisah dari Rombongan",
      "solusi": "Hubungi nomor darurat yang tersedia di ID Card SISKOPATUH.",
      "pencegahan": "Selalu gunakan ID Card SISKOPATUH."
    },
    {
      "masalah": "Masalah dengan Bus Saat Kegiatan",
      "solusi": "Cari bus alternatif untuk menggantikan.",
      "pencegahan": "Konfirmasi bus minimal H-2 dan pastikan surat reservasi ada sebelum keberangkatan."
    },
    {
      "masalah": "Keterlambatan Bus",
      "solusi": "Cari alternatif atau alihkan perhatian jamaah dengan berbincang hingga bus tiba.",
      "pencegahan": "Hubungi bus sehari sebelum kegiatan atau berangkat lebih awal."
    },
    {
      "masalah": "Kesulitan Komunikasi",
      "solusi": "Gunakan aplikasi Google Translate atau bantuan dari Muthawwif.",
      "pencegahan": "Pelajari beberapa kosakata dasar dalam bahasa Arab dan bawa kamus saku."
    },
    {
      "masalah": "Makanan Tidak Cocok dengan Lidah",
      "solusi": "Cari restoran yang menyediakan makanan sesuai selera atau bawa bekal.",
      "pencegahan": "Cari tahu tempat makan di sekitar hotel/masjid dan bawa makanan tahan lama."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Logistik dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahLogistikList.length,
        itemBuilder: (context, index) {
          final item = masalahLogistikList[index];
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