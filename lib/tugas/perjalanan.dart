import 'package:flutter/material.dart';

class Perjalanan extends StatelessWidget {
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
Kesiapan Jamaah

Memastikan Keberangkatan:
- Memastikan semua jamaah sudah berkumpul di lokasi keberangkatan sesuai dengan jadwal yang telah ditentukan.
- Memastikan jamaah telah menyiapkan dan membawa semua dokumen perjalanan yang diperlukan, seperti paspor, visa, tiket, dan surat keterangan kesehatan apabila diperlukan atau paspor dipegang oleh jamaah.


Pengecekan Administrasi

Pengecekan Terakhir:
- Melakukan pengecekan terakhir terhadap dokumen-dokumen tour leader atau dokumen perjalanan jamaah untuk memastikan kelengkapan dan kevalidan.
- Usahakan untuk mengumpulkan informasi kontak darurat dari setiap jamaah untuk keperluan komunikasi selama perjalanan.


Koordinasi dengan Pihak Terkait

Komunikasi dan Persiapan:
- Berkomunikasi dengan tim handling bandara dan manajemen terkait persiapan keberangkatan, seperti check-in dan prosedur boarding.
- Memastikan semua tiket pesawat, akomodasi, dan bus untuk jamaah telah diatur dengan baik.

Memberikan Informasi Penting

Pengumuman dan Koordinasi:
- Memberikan pengumuman kepada jamaah mengenai jadwal keberangkatan, prosedur di bandara, dan aturan yang perlu diikuti selama perjalanan.
- Memberikan informasi tentang tempat-tempat pertemuan dan titik kumpul selama perjalanan untuk memudahkan koordinasi dan komunikasi.


Membangun Kekompakan di Antara Jamaah

Suasana Positif:
- Membangun suasana yang positif dan harmonis di antara jamaah sejak awal perjalanan.
- Memberikan arahan kepada jamaah tentang pentingnya kerjasama, saling tolong-menolong, toleransi, dan keterbukaan selama perjalanan Umrah.


Menyampaikan Aturan Perjalanan Travel

Tata Tertib Perjalanan:
- Mensosialisasikan aturan dan tata tertib yang berlaku selama perjalanan, termasuk tentang perlunya menjaga kebersihan, ketertiban, dan keamanan.


Kesiapan Pribadi

Kesiapan Tour Leader:
- Memastikan Tour Leader dalam keadaan siap secara fisik dan mental untuk menghadapi segala situasi yang mungkin terjadi selama perjalanan.
- Menyusun rencana darurat dan strategi penyelesaian masalah jika terjadi kendala atau kejadian tak terduga, serta berkoordinasi dengan manajemen bila menemukan masalah namun tidak menemukan solusi.


Pemantauan Kesehatan Jamaah

Kondisi Kesehatan:
- Memantau kondisi kesehatan jamaah sejak awal perjalanan dan memberikan bantuan medis atau perhatian khusus jika diperlukan.
- Memastikan jamaah mematuhi protokol kesehatan dan keselamatan yang berlaku.


Kepatuhan Terhadap Peraturan

Mematuhi Instruksi:
- Memastikan semua jamaah mematuhi peraturan dan instruksi yang diberikan oleh otoritas penerbangan, pihak bandara, dan pihak terkait lainnya.


Membantu Jamaah Tercapai Tujuan Ibadahnya

Motivasi dan Kepuasan:
- Ketika jamaah telah mencapai tujuan ibadahnya, akan terlihat perubahan pada sikap dan karakter jamaah.
- Jamaah akan merasa puas, memotivasi mereka untuk semakin giat belajar agama, dan berpotensi melakukan ibadah lainnya seperti Umrah di masa depan atau bahkan berhaji.
- Selain itu, jamaah akan merasa lebih solid dan loyal, yang mungkin membuat mereka tertarik menggunakan jasa Retali untuk Umrah atau Haji di kemudian hari.


Membimbing Ibadah Sesuai Sunnah

Pedoman Ibadah:
- Sesuai dengan moto Retali yaitu "Sesuai Sunnah," seorang tour leader Umrah perlu memiliki kemampuan membimbing ibadah sesuai sunnah dan menghindari perkara bid'ah.
- Tour leader dengan pemahaman mendalam tentang tata cara ibadah Umrah sesuai sunnah Rasulullah Shollallahu alaihi wa sallam sangat penting agar dapat membimbing jamaah dengan benar dan efektif, sehingga ibadah Umrah menjadi sah, khusyuk, dan berkesan.


Manajerial

Efisiensi dan Organisasi:
- Seorang tour leader Umrah harus memastikan efisiensi dan organisasi yang baik dalam setiap aspek perjalanan, dari logistik hingga jadwal ibadah.
- Kepatuhan pada peraturan juga memastikan pelayanan yang profesional dan seragam, yang dapat meningkatkan kepuasan dan kualitas pengalaman ibadah Umrah bagi jamaah sehingga meninggalkan kesan yang baik.
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
