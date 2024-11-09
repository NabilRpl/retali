import 'package:flutter/material.dart';

class TanggungJawab extends StatelessWidget {
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
Definisi Tour Leader Umrah

Tour Leader Umrah atau TL adalah seseorang yang ditunjuk oleh Manajemen untuk memimpin, membimbing, dan mengatur jamaah umrah selama perjalanan ibadah ke Tanah Suci. Perannya penting dalam memastikan seluruh kegiatan umrah berjalan lancar, sesuai dengan sunnah dan syariat Islam, serta memberikan pengalaman yang berkesan bagi jamaah.

Berikut adalah beberapa tanggung jawab umum seorang Tour Leader Umrah:

1. Perencanaan dan Koordinasi Perjalanan
- Mengatur Itinerary: Menyusun jadwal perjalanan rinci termasuk penerbangan, akomodasi, dan transportasi lokal.
- Koordinasi dengan Pihak Terkait: Bekerja sama dengan tim handling bandara, hotel, dan penyedia transportasi untuk memastikan semua kebutuhan logistik terpenuhi.

2. Bimbingan Ibadah
- Membantu Pelaksanaan Ibadah Umrah: Membimbing jamaah tentang tata cara ibadah umrah seperti thawaf, sa’i, dan tahallul.
- Memberikan Pemahaman Keagamaan: Menjelaskan makna setiap prosesi agar jamaah dapat merasakan pengalaman ibadah yang mendalam.

3. Manajemen Rombongan Jamaah
- Pengelolaan Jamaah: Mengatur dan memastikan setiap jamaah merasa terlayani.
- Penyelesaian Konflik: Menyelesaikan masalah atau konflik yang mungkin timbul di antara jamaah dengan bijaksana.

4. Pendampingan dan Keamanan
- Pendampingan Jamaah: Memberikan bantuan kepada jamaah yang membutuhkan, seperti lansia atau yang memiliki kebutuhan khusus.
- Kesehatan dan Keselamatan: Memastikan jamaah tetap sehat dan aman selama perjalanan, serta menangani situasi darurat medis.

5. Penyuluhan dan Informasi
- Memberikan Informasi Penting: Menyampaikan aturan setempat dan tata tertib di Tanah Suci.
- Edukasi Sejarah: Menyampaikan sejarah dan keutamaan tempat-tempat yang dikunjungi.

6. Pengaturan Logistik
- Transportasi: Mengatur transportasi selama di Mekkah dan Madinah.
- Akomodasi: Memastikan penginapan nyaman dan sesuai standar.

7. Komunikasi Efektif
- Menyampaikan Informasi Tepat Waktu: Memberi informasi perubahan jadwal atau aktivitas.
- Berkomunikasi dengan Pihak Lain: Menjalin komunikasi yang baik dengan hotel, muthawwif, transportasi, dan pihak berwenang lainnya.

8. Administrasi dan Dokumentasi
- Mengelola Dokumen Perjalanan: Mengelola paspor, visa, tiket, dan dokumen perjalanan lainnya.
- Pendataan dan Pelaporan: Mencatat dan melaporkan segala aktivitas selama perjalanan.

9. Pelayanan Pelanggan
- Memberikan Pelayanan Prima: Melayani jamaah dengan ramah, profesional, dan responsif.
- Menjaga Kepuasan Jamaah: Berupaya memberikan pengalaman terbaik bagi jamaah.

10. Kesiapan dan Adaptabilitas
- Menghadapi Tantangan: Siap menghadapi situasi tak terduga selama perjalanan.
- Adaptasi Tinggi: Mampu beradaptasi dengan cepat terhadap perubahan.

Dengan berbagai tanggung jawab ini, seorang Tour Leader Umrah perlu memiliki keterampilan manajerial, pengetahuan agama yang baik, serta kemampuan komunikasi yang efektif.
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
