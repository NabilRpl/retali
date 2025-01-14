import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'naskah_screen_madinah.dart';
import 'naskah_screen_mekkah.dart';

class NaskahScreen extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/banner_naskah.jpg',
    'assets/images/banner_naskah.jpg',
    'assets/images/banner_naskah.jpg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.02), // Adjusted for responsiveness
          CarouselSlider(
            options: CarouselOptions(
              height: screenHeight * 0.25, // Set height based on screen height
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
            ),
            items: carouselImages.map((imagePath) {
              return Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Color(0xFFE6E0F8),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            }).toList(),
          ),
          SizedBox(height: screenHeight * 0.02), // Added spacing for responsiveness
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Dynamic padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Naskah Briefing',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: screenWidth * 0.08, // Responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(color: Colors.purple, thickness: 2),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.01), // Added spacing for responsiveness
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(screenWidth * 0.03), // Dynamic padding
              children: [
                _buildDoaCard(context, 'Briefing Grouping Manasik', '', GroupingManasik()),
                _buildDoaCard(context, 'Briefing Saat Keberangkatan', '', Keberangkatan()),
                _buildDoaCard(context, 'Bandara Jeddah ke Madinah', '', NaskahScreenMadinah()),
                _buildDoaCard(context, 'Bandara Jeddah ke Mekkah', '', NaskahScreenMekkah()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoaCard(BuildContext context, String title, String description, Widget targetScreen) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => targetScreen,
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01), // Dynamic margin
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05), // Dynamic padding
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Vector.png',
                width: screenWidth * 0.1, // Dynamic image size based on screen width
                height: screenWidth * 0.1,
              ),
              SizedBox(width: screenWidth * 0.04), // Responsive space between image and text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: screenWidth * 0.05, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01), // Dynamic spacing
                    Text(
                      description,
                      style: TextStyle(fontSize: screenWidth * 0.04), // Responsive font size
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GroupingManasik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Group Manasik")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu'alaikum warahmatullahi wabarakatuh,"),
          _buildBulletPoint("Bismillahirrahmanirrahim, Alhamdulillahi rabbil 'alamin, segala puji bagi Allah عز وجل yang telah memberikan kita nikmat iman, kesehatan, dan kesempatan sehingga kita dapat berkumpul di sini dalam keadaan yang penuh berkah."),
          _buildBulletPoint("Shalawat serta salam semoga senantiasa tercurahkan kepada junjungan kita Nabi Besar Muhammad ﷺ, beserta keluarga, sahabat, dan para pengikutnya yang setia hingga akhir zaman."),
          _buildSectionTitle("Para jamaah Retali yang dirahmati Allah,"),
          _buildBulletPoint("Alhamdulillah, kita telah menyelesaikan perjalanan kita di kota Madinah dan sebentar lagi kita akan melanjutkan perjalanan menuju kota suci Mekkah untuk melaksanakan ibadah umrah."),
          _buildBulletPoint("Sebelum kita berangkat, izinkan saya untuk memberikan beberapa pemantapan mengenai manasik umrah agar kita semua dapat melaksanakan ibadah dengan benar dan khusyuk."),
          _buildSectionTitle("Niat dan Ihram:"),
          _buildBulletPoint("Sebelum memasuki miqat, pastikan kita sudah berniat untuk melaksanakan umrah dan mengenakan pakaian ihram."),
          _buildBulletPoint("Ihram bagi laki-laki adalah dua helai kain putih tanpa jahitan, sementara bagi perempuan adalah pakaian yang menutupi seluruh tubuh kecuali wajah dan telapak tangan."),
          _buildBulletPoint("Setelah berniat dan mengenakan ihram, larangan-larangan ihram mulai berlaku, seperti tidak memotong rambut atau kuku, tidak menggunakan wangi-wangian, dan lain-lain."),
          _buildSectionTitle("Tawaf:"),
          _buildBulletPoint("Setelah tiba di Masjidil Haram, kita akan melaksanakan tawaf mengelilingi Ka'bah sebanyak tujuh putaran, dimulai dari Hajar Aswad dan berakhir di tempat yang sama."),
          _buildBulletPoint("Tidak ada doa khusus yang terlalu sulit, perbanyaklah bermunajat, dzikir, dan istighfar."),
          _buildSectionTitle("Sa'i:"),
          _buildBulletPoint("Setelah menyelesaikan tawaf, kita akan melakukan sa'i, yaitu berjalan tujuh kali antara bukit Shafa dan Marwah."),
          _buildBulletPoint("Saat sa'i, perbanyaklah doa dan dzikir, mengingat perjuangan Hajar mencari air untuk putranya, Nabi Ismail."),
          _buildSectionTitle("Tahallul:"),
          _buildBulletPoint("Setelah sa'i, kita akan melakukan tahallul, yaitu mencukur atau memotong sebagian rambut."),
          _buildBulletPoint("Bagi laki-laki, dianjurkan untuk mencukur seluruh rambut, sedangkan perempuan cukup memotong sebagian kecil."),
          _buildSectionTitle("Tata Krama dan Etika:"),
          _buildBulletPoint("Selama berada di Masjidil Haram, harap jaga adab dan sopan santun."),
          _buildBulletPoint("Hormati sesama jamaah dan petugas masjid. Jaga kebersihan, ketertiban, dan jangan berdesak-desakan."),
          _buildSectionTitle("Para jamaah yang berbahagia,"),
          _buildBulletPoint("Mari kita manfaatkan waktu di kota Mekkah dengan sebaik-baiknya. Perbanyaklah ibadah, dzikir, dan doa."),
          _buildBulletPoint("Semoga Allah عز وجل menerima amal ibadah kita dan memberikan kita keberkahan serta kemudahan dalam menjalankan ibadah umrah."),
          _buildSubSection("Demikian yang dapat saya sampaikan. Semoga perjalanan kita menuju Mekkah dilancarkan dan diberkahi oleh Allah عز وجل."),
          _buildSubSection("Wassalamu'alaikum warahmatullahi wabarakatuh."),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(text, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }

  Widget _buildSubSection(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
      ),
    );
  }
}

class Keberangkatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing saat Keberangkatan")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu'alaikum warahmatullahi wabarakatuh,"),
          _buildBulletPoint("Alhamdulillah, segala puji bagi Allah SWT yang telah memberikan kita kesempatan untuk melaksanakan ibadah umrah. Shalawat dan salam kita sampaikan kepada junjungan kita Nabi Muhammad SAW, keluarga, sahabat, dan kita semua sebagai umatnya."),
          
          _buildSectionTitle("Perkenalan"),
          _buildBulletPoint("Perkenalkan, nama saya [Nama Tour Leader], dan saya akan menjadi tour leader Anda selama perjalanan umrah ini. Saya bersama tim Retali akan mendampingi Anda semua untuk memastikan perjalanan ibadah kita berjalan lancar, aman, dan nyaman, sesuai dengan tuntunan syariat Islam."),
          
          _buildSectionTitle("Kesiapan Jamaah"),
          _buildSubSection("Waktu dan Tempat Berkumpul:"),
          _buildBulletPoint("Pastikan semua jamaah sudah berkumpul di lokasi keberangkatan di [lokasi] pada pukul [waktu] sesuai dengan jadwal yang telah ditentukan."),
          _buildSubSection("Dokumen Perjalanan:"),
          _buildBulletPoint("Pastikan semua jamaah telah membawa dokumen perjalanan yang diperlukan, seperti paspor, visa, tiket, dan surat keterangan kesehatan jika diperlukan. Silakan periksa kembali kelengkapan dokumen Anda."),
          
          _buildSectionTitle("Pengecekan Administrasi"),
          _buildSubSection("Verifikasi Dokumen:"),
          _buildBulletPoint("Kami akan melakukan pengecekan terakhir terhadap dokumen perjalanan Anda. Mohon siapkan paspor dan tiket untuk diperiksa."),
          _buildSubSection("Kontak Darurat:"),
          _buildBulletPoint("Kami juga akan mengumpulkan informasi kontak darurat dari setiap jamaah. Mohon untuk memberikan nomor kontak yang bisa dihubungi selama perjalanan."),
          
          _buildSectionTitle("Koordinasi dengan Pihak Terkait"),
          _buildSubSection("Bandara dan Penerbangan:"),
          _buildBulletPoint("Kami telah berkoordinasi dengan pihak handling bandara dan manajemen terkait persiapan keberangkatan, termasuk check-in dan prosedur boarding. Mohon ikuti arahan dari tim kami."),
          _buildSubSection("Akomodasi dan Transportasi:"),
          _buildBulletPoint("Semua tiket pesawat, akomodasi, dan transportasi selama di Tanah Suci telah diatur dengan baik. Kami akan memastikan semuanya sesuai dengan rencana."),
          
          _buildSectionTitle("Informasi Penting"),
          _buildSubSection("Jadwal Keberangkatan:"),
          _buildBulletPoint("Keberangkatan kita dijadwalkan pada pukul [waktu], dengan penerbangan [nomor penerbangan]. Pastikan Anda sudah berada di area check-in minimal 3 jam sebelum keberangkatan."),
          _buildSubSection("Prosedur di Bandara:"),
          _buildBulletPoint("Ikuti instruksi dari petugas bandara dan pastikan Anda membawa barang-barang sesuai dengan aturan. Jangan membawa barang-barang terlarang dan perhatikan batasan berat bagasi."),
          _buildSubSection("Titik Kumpul:"),
          _buildBulletPoint("Selalu perhatikan titik-titik kumpul yang telah ditentukan selama perjalanan. Informasi ini akan diberikan secara detail oleh tim kami setiap kali kita sampai di tujuan baru."),
          
          _buildSectionTitle("Membangun Kekompakan"),
          _buildSubSection("Kerjasama dan Toleransi:"),
          _buildBulletPoint("Mari kita bangun suasana yang positif dan harmonis di antara kita. Penting untuk saling membantu, toleransi, dan keterbukaan selama perjalanan ini."),
          
          _buildSectionTitle("Aturan Perjalanan"),
          _buildSubSection("Tata Tertib:"),
          _buildBulletPoint("Jaga kebersihan, ketertiban, dan keamanan selama perjalanan. Patuhi semua aturan yang telah disosialisasikan."),
          
          _buildSectionTitle("Kesiapan Pribadi"),
          _buildSubSection("Kesehatan dan Keselamatan:"),
          _buildBulletPoint("Jaga kesehatan Anda, ikuti protokol kesehatan yang berlaku. Jika merasa tidak enak badan, segera lapor ke tim kami."),
          _buildSubSection("Kesiapan Mental:"),
          _buildBulletPoint("Siapkan diri secara mental untuk menghadapi berbagai situasi yang mungkin terjadi selama perjalanan."),
          
          _buildSectionTitle("Pembimbingan Ibadah"),
          _buildSubSection("Ibadah Sesuai Sunnah:"),
          _buildBulletPoint("Kami akan membimbing Anda untuk melaksanakan ibadah umrah sesuai dengan sunnah Rasulullah SAW. Hindari perkara bid'ah dan pastikan ibadah Anda sah dan khusyuk."),
          
          _buildSectionTitle("Manajerial"),
          _buildSubSection("Efisiensi dan Organisasi:"),
          _buildBulletPoint("Kami akan menjalankan setiap aspek perjalanan dengan manajerial yang baik untuk memastikan efisiensi dan organisasi yang rapi. Hal ini bertujuan agar Anda mendapatkan pengalaman ibadah yang berkesan dan memuaskan."),
          
          _buildSectionTitle("Penutup"),
          _buildBulletPoint("Semoga Allah SWT memudahkan perjalanan kita, memberikan kita kesehatan dan kekuatan, serta menerima seluruh ibadah kita. Mari kita niatkan perjalanan ini semata-mata untuk mendapatkan ridha Allah SWT."),
          _buildSubSection("Wassalamu'alaikum warahmatullahi wabarakatuh."),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(text, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }

  Widget _buildSubSection(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
      ),
    );
  }
}
