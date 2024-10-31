import 'package:flutter/material.dart';

class Naskahbrifing extends StatelessWidget {
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
                  'Naskah Brifing', // Title text
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
                    '''Assalamu'alaikum warahmatullahi wabarakatuh,

Alhamdulillah, segala puji bagi Allah SWT yang telah memberikan kita kesempatan untuk melaksanakan ibadah umrah. Shalawat dan salam kita sampaikan kepada junjungan kita Nabi Muhammad SAW, keluarga, sahabat, dan kita semua sebagai umatnya.

*Perkenalan*
Perkenalkan, nama saya [Nama Tour Leader], dan saya akan menjadi tour leader Anda selama perjalanan umrah ini. Saya bersama tim Retali akan mendampingi Anda semua untuk memastikan perjalanan ibadah kita berjalan lancar, aman, dan nyaman, sesuai dengan tuntunan syariat Islam.

*Kesiapan Jamaah*
*Waktu dan Tempat Berkumpul:*
Pastikan semua jamaah sudah berkumpul di lokasi keberangkatan di [lokasi] pada pukul [waktu] sesuai dengan jadwal yang telah ditentukan.

*Dokumen Perjalanan:*
Pastikan semua jamaah telah membawa dokumen perjalanan yang diperlukan, seperti paspor, visa, tiket, dan surat keterangan kesehatan jika diperlukan. Silakan periksa kembali kelengkapan dokumen Anda.

*Pengecekan Administrasi*
*Verifikasi Dokumen:*
Kami akan melakukan pengecekan terakhir terhadap dokumen perjalanan Anda. Mohon siapkan paspor dan tiket untuk diperiksa.

*Kontak Darurat:*
Kami juga akan mengumpulkan informasi kontak darurat dari setiap jamaah. Mohon untuk memberikan nomor kontak yang bisa dihubungi selama perjalanan.

*Koordinasi dengan Pihak Terkait*
*Bandara dan Penerbangan:*
Kami telah berkoordinasi dengan pihak handling bandara dan manajemen terkait persiapan keberangkatan, termasuk check-in dan prosedur boarding. Mohon ikuti arahan dari tim kami.

*Akomodasi dan Transportasi:*
Semua tiket pesawat, akomodasi, dan transportasi selama di Tanah Suci telah diatur dengan baik. Kami akan memastikan semuanya sesuai dengan rencana.

*Informasi Penting*
*Jadwal Keberangkatan:*
Keberangkatan kita dijadwalkan pada pukul [waktu], dengan penerbangan [nomor penerbangan]. Pastikan Anda sudah berada di area check-in minimal 3 jam sebelum keberangkatan.

*Prosedur di Bandara:*
Ikuti instruksi dari petugas bandara dan pastikan Anda membawa barang-barang sesuai dengan aturan. Jangan membawa barang-barang terlarang dan perhatikan batasan berat bagasi.

*Titik Kumpul:*
Selalu perhatikan titik-titik kumpul yang telah ditentukan selama perjalanan. Informasi ini akan diberikan secara detail oleh tim kami setiap kali kita sampai di tujuan baru.

*Membangun Kekompakan*
*Kerjasama dan Toleransi:*
Mari kita bangun suasana yang positif dan harmonis di antara kita. Penting untuk saling membantu, toleransi, dan keterbukaan selama perjalanan ini.

*Aturan Perjalanan*
*Tata Tertib:*
Jaga kebersihan, ketertiban, dan keamanan selama perjalanan. Patuhi semua aturan yang telah disosialisasikan.

*Kesiapan Pribadi*
*Kesehatan dan Keselamatan:*
Jaga kesehatan Anda, ikuti protokol kesehatan yang berlaku. Jika merasa tidak enak badan, segera lapor ke tim kami.

*Kesiapan Mental:*
Siapkan diri secara mental untuk menghadapi berbagai situasi yang mungkin terjadi selama perjalanan.

*Pembimbingan Ibadah*
*Ibadah Sesuai Sunnah:*
Kami akan membimbing Anda untuk melaksanakan ibadah umrah sesuai dengan sunnah Rasulullah SAW. Hindari perkara bid'ah dan pastikan ibadah Anda sah dan khusyuk.

*Manajerial*
*Efisiensi dan Organisasi:*
Kami akan menjalankan setiap aspek perjalanan dengan manajerial yang baik untuk memastikan efisiensi dan organisasi yang rapi. Hal ini bertujuan agar Anda mendapatkan pengalaman ibadah yang berkesan dan memuaskan.

*Penutup*
Semoga Allah SWT memudahkan perjalanan kita, memberikan kita kesehatan dan kekuatan, serta menerima seluruh ibadah kita. Mari kita niatkan perjalanan ini semata-mata untuk mendapatkan ridha Allah SWT.

Wassalamu'alaikum warahmatullahi wabarakatuh.

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

void main() {
  runApp(MaterialApp(
    home: Naskahbrifing(),
  ));
}