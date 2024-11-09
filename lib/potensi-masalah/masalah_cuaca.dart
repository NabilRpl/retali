import 'package:flutter/material.dart';

class MasalahCuaca extends StatefulWidget {
  const MasalahCuaca({super.key});

  @override
  State<MasalahCuaca> createState() => _MasalahCuacaState();
}

class _MasalahCuacaState extends State<MasalahCuaca> {
  final List<Map<String, String>> masalahCuacaList = [
    {
      "masalah": "Cuaca Terlalu Panas atau Dingin",
      "solusi": "Tetapkan jadwal ibadah atau kunjungan pada waktu yang lebih sejuk, seperti pagi atau sore hari. Pastikan tersedia tempat berteduh atau istirahat di area ibadah atau tempat bersejarah.",
      "pencegahan": "Sarankan jamaah membawa topi, kacamata hitam, dan pelindung dari sinar matahari. Jaga hidrasi dengan minum air secara teratur."
    },
    {
      "masalah": "Kekeringan atau Kekurangan Air",
      "solusi": "Hemat penggunaan air dan cari sumber air alternatif jika diperlukan.",
      "pencegahan": "Siapkan persediaan air yang cukup sebelum perjalanan untuk berjaga-jaga."
    },
    {
      "masalah": "Cuaca Ekstrem (Terlalu Panas atau Dingin)",
      "solusi": "Beri tahu jamaah untuk membawa perlengkapan yang sesuai, seperti jaket, payung, atau pelindung matahari. Selalu sesuaikan pakaian dengan kondisi cuaca.",
      "pencegahan": "Informasikan kepada jamaah kondisi cuaca yang akan dihadapi di setiap lokasi dan anjurkan mereka membawa pakaian yang sesuai."
    },
    {
      "masalah": "Hujan atau Badai Salju",
      "solusi": "Siapkan alternatif untuk kegiatan di luar ruangan jika terjadi cuaca buruk, seperti mengunjungi tempat bersejarah atau tempat ibadah indoor.",
      "pencegahan": "Periksa ramalan cuaca secara berkala dan pastikan jamaah membawa perlengkapan hujan, payung, dan alas kaki tahan air."
    },
    {
      "masalah": "Kesulitan Berkomunikasi dengan Sopir",
      "solusi": "Berbekal kemampuan bahasa yang diperlukan atau menggunakan aplikasi penerjemah. Tour leader atau Muthawwif yang menguasai bahasa dapat membantu.",
      "pencegahan": "Pastikan Muthawwif berada di bus dengan jamaah atau pilih sopir yang dapat berkomunikasi dalam bahasa Indonesia."
    },
    {
      "masalah": "Banjir atau Badai Hujan",
      "solusi": "Jika cuaca buruk, tetap di hotel atau mencari tempat aman jika sedang di luar.",
      "pencegahan": "Pantau terus kondisi cuaca di Arab Saudi, karena kadang sulit diprediksi, dan buat perencanaan yang fleksibel."
    },
    {
      "masalah": "Kebakaran Hutan",
      "solusi": "Ikuti petunjuk evakuasi dari pihak berwenang jika terjadi kebakaran hutan di area sekitar.",
      "pencegahan": "Pantau situasi di sekitar dan hindari area yang rawan kebakaran selama perjalanan."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masalah Cuaca dan Solusi"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: masalahCuacaList.length,
        itemBuilder: (context, index) {
          final item = masalahCuacaList[index];
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
