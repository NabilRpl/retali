import 'package:flutter/material.dart';

class Keberangkatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Background color of the page
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Remove AppBar color
        elevation: 0, // No shadow
        automaticallyImplyLeading: false, // No back button
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title Box
            Container(
              decoration: BoxDecoration(
                color: Colors.purple, // Background color of the title box
                borderRadius:
                    BorderRadius.circular(10), // Rounded corners for the box
              ),
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Tugas Tour Leader Umrah', // Title text
                  style: TextStyle(
                    color: Colors.white, // White text color
                    fontSize: 18.0, // Font size for the title
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0), // Space between title and content
            // Container for the text content
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple, // Background color of the content box
                  borderRadius:
                      BorderRadius.circular(10), // Rounded corners for the box
                ),
                padding:
                    const EdgeInsets.all(16.0), // Padding inside the container
                child: SingleChildScrollView(
                  child: Text(
                    '''
1. Persiapan Sebelum Keberangkatan:

- Menghadiri Manasik Umrah:
Kehadiran Tour Leader (TL) dalam Manasik Umrah bersama jamaah sangat bermanfaat. Pertemuan pertama ini membantu TL membangun hubungan baik dan menciptakan rasa percaya. Jamaah akan merasa lebih nyaman dan yakin karena telah bertemu langsung dengan TL yang akan mendampingi mereka. TL juga dapat mengidentifikasi jamaah yang memiliki kebutuhan dan karakteristik khusus.

- Memimpin Grouping Saat Manasik:
Berkumpul dengan jamaah untuk berkenalan dan memberikan informasi penting tentang itinerary, persiapan fisik dan mental, serta materi bimbingan ibadah. Ajak jamaah untuk meluruskan niat dan mengedepankan pentingnya kekeluargaan.

- Memasuki Grup Keberangkatan:
Seorang TL perlu bergabung dalam WhatsApp Group (WAG) keberangkatan untuk memastikan koordinasi yang efektif, penyampaian informasi yang cepat, dan komunikasi dua arah dengan para jamaah. WAG juga membantu dalam meningkatkan kesiapan, membangun kebersamaan, dan mendokumentasikan perjalanan sehingga pengalaman umrah menjadi lebih lancar dan menyenangkan bagi semua pihak (mitra, manajemen, dan jamaah/beserta keluarga jamaah).

- Memberi Pengarahan dan Persiapan:
TL perlu menyampaikan jadwal keberangkatan dan kepulangan, informasi dokumen penting seperti paspor dan visa, daftar perlengkapan yang harus dibawa, prosedur keberangkatan di bandara, detail akomodasi dan transportasi di Tanah Suci, itinerary, aturan dan etika ibadah, kontak darurat, serta tips dan trik untuk kenyamanan dan keamanan jamaah.

- Menghafal Nama Jamaah:
TL perlu menghafal nama setiap jamaah untuk mengenali mereka secara individu, guna membangun hubungan yang lebih dekat dan personal. Ini juga memudahkan komunikasi dan manajemen situasi darurat jika dibutuhkan.

- Bergabung di Grup Officer dan Komunikasi Intens:
Seorang TL perlu menjalin komunikasi intens dengan manajemen sebelum keberangkatan untuk memahami persyaratan dan kebijakan, menyampaikan informasi dari rekan di Grup Officer, dan bersiap menghadapi situasi darurat bersama demi kelancaran perjalanan.

- Pengecekan Kesiapan Dokumen:
Pastikan semua dokumen perjalanan seperti paspor, visa, tiket, dan surat keterangan kesehatan lengkap dan valid. Berkomunikasi dengan agen travel untuk memastikan semua persiapan logistik, termasuk akomodasi dan transportasi, telah diatur.

- Menghafal Naskah Briefing:
Menghafal naskah briefing penting bagi TL Umrah untuk memastikan keakuratan informasi yang disampaikan, menghindari kesalahan, dan memberikan kesan profesional yang membangun kepercayaan.

- Koordinasi Sebelum Hari Keberangkatan:
Koordinasi sebelum hari H keberangkatan Umrah sangat penting bagi petugas untuk memastikan kelancaran dan kesiapan seluruh aspek perjalanan. Petugas dapat mengonfirmasi jadwal keberangkatan, memeriksa kelengkapan dokumen, dan memastikan semua perlengkapan yang diperlukan telah siap.
    ''',
                    style: TextStyle(
                      color: Colors.white, // White text color
                      fontSize: 16.0, // Font size for content
                      height: 1.5, // Line height for better readability
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
