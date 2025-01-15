import 'package:flutter/material.dart';

class PotensiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Kesehatan"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Masalah Dehidrasi"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Segera beristirahat dan mencari tempat untuk minum."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Jangan terlalu cepat dalam berjalan, gunakan pakaian yang ringan."),
          _buildSectionTitle("Masalah Kelelahan"),
          _buildBulletPoint(
              "Perkenalkan, nama saya [Nama Tour Leader], dan saya akan menjadi tour leader Anda selama perjalanan umrah ini. Saya bersama tim Retali akan mendampingi Anda semua untuk memastikan perjalanan ibadah kita berjalan lancar, aman, dan nyaman, sesuai dengan tuntunan syariat Islam."),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Istirahat yang cukup, berikan Vit B Kompleks untuk memulihkan energi."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Jangan forsir ibadah dan berjalan-jalan terlalu banyak."),
          _buildSectionTitle("Masalah Gangguan Pencernaan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Konsumsi obat antidiare atau antasida."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Hindari makanan pedas atau tidak higienis, kurangi jajan sembarangan."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class MasalahLogistik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Logistik"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Masalah Kehilangan Bagasi"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Laporkan segera ke bagian lost and found, berikan label bagasi dan boarding pass jamaah terkait."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Tandai bagasi dengan tanda khusus dan simpan label bagasi serta boarding pass dengan baik."),
          _buildSectionTitle("Masalah Tiket Pesawat/Boarding Pass Hilang"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Hubungi maskapai penerbangan dan minta untuk mencetak ulang tiket."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Simpan tiket/boarding pass di tempat aman dan buat salinan digital."),
          _buildSectionTitle("Masalah Tertinggal Pesawat"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Cari penerbangan pengganti jika memungkinkan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint("Datang ke bandara 4 jam sebelum penerbangan."),
          _buildSectionTitle("Masalah Paspor Hilang"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Laporkan kepada manajemen dan kunjungi kedutaan/KJRI terdekat jika memungkinkan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Simpan paspor di tempat aman dan miliki salinan digital."),
          _buildSectionTitle("Masalah Akomodasi Tidak Sesuai"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Komplain ke manajemen hotel untuk meminta fasilitas yang kurang."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Dapatkan konfirmasi booking sebelum tiba di hotel."),
          _buildSectionTitle("Masalah Kehilangan Dompet atau Uang"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Laporkan ke polisi dan blokir kartu ATM."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Bawa uang tunai secukupnya dan hindari membawa dompet saat ibadah."),
          _buildSectionTitle("Masalah Tersesat dan Terpisah dari Rombongan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Hubungi nomor darurat yang tersedia di ID Card SISKOPATUH."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint("Selalu gunakan ID Card SISKOPATUH."),
          _buildSectionTitle("Masalah dengan Bus Saat Kegiatan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Cari bus alternatif untuk menggantikan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Konfirmasi bus minimal H-2 dan pastikan surat reservasi ada sebelum keberangkatan."),
          _buildSectionTitle("Masalah Keterlambatan Bus"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Cari alternatif atau alihkan perhatian jamaah dengan berbincang hingga bus tiba."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Hubungi bus sehari sebelum kegiatan atau berangkat lebih awal."),
          _buildSectionTitle("Masalah Kesulitan Komunikasi"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Gunakan aplikasi Google Translate atau bantuan dari Muthawwif."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pelajari beberapa kosakata dasar dalam bahasa Arab dan bawa kamus saku."),
          _buildSectionTitle("Masalah Tidak Cocok dengan Lidah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Cari restoran yang menyediakan makanan sesuai selera atau bawa bekal."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Cari tahu tempat makan di sekitar hotel/masjid dan bawa makanan tahan lama."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class MasalahIbadah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Ibadah"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Masalah Umum"),
          _buildSectionTitle(
              "1. Antrian Panjang di Raudhah, Masjid Nabawi, dan Haram"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Ikuti antrian dengan sabar dan manfaatkan waktu untuk berdoa."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Kunjungi Masjid di luar jam sibuk jika memungkinkan."),
          _buildSectionTitle(
              "2. Kesulitan Melakukan Ibadah Umrah/Thawaf Sunnah Karena Padat"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Lakukan di waktu yang lebih sepi."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pilih waktu yang tidak terlalu ramai, seperti tengah malam, subuh, atau di waktu Syuruq/Dhuha."),
          _buildSectionTitle("3. Jamaah Tidak Bisa Melanjutkan Ibadah Umrah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Melakukan tahallul dan menyelesaikan ibadah di tempat dimana ia tertahan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Bersiap untuk melakukan niat syarat pada saat ber-ihram apabila kondisi jamaah dirasa tidak memungkinkan."),
          _buildSectionTitle("4. Salah dalam Melakukan Rukun Umrah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Koreksi dan ulangi jika memungkinkan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Belajar dan praktekkan tata cara Manasik Umrah sebelum berangkat."),
          _buildSectionTitle("5. Kesulitan Mengikuti Rangkaian Ibadah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Minta bantuan pembimbing Umrah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pelajari tata cara Manasik Umrah sebelum berangkat."),
          _buildSectionTitle("Masalah Saat Miqat"),
          _buildSectionTitle(
              "1. Masalah Ketidakpahaman Tentang Rukun dan Larangan Ihram"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Jelaskan kepada jamaah tentang rukun dan larangan ihram."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Sarankan jamaah untuk mengikuti manasik Umrah sebelum berangkat dan baca panduan Umrah."),
          _buildSectionTitle("2. Kesulitan Menggunakan Kain Ihram"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Sarankan jamaah meminta bantuan dari jamaah lain atau tour leader."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Latihan menggunakan kain ihram sebelum berangkat."),
          _buildSectionTitle("Masalah Saat Thawaf"),
          _buildSectionTitle("1. Crowded dan Desak-desakan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Thawaf di waktu yang lebih sepi atau lebih dekat dengan dinding luar."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              " Pilih waktu yang tidak terlalu ramai dan tetap tenang. Memberikan edukasi kepada jamaah tentang pentingnya tertib saat ibadah dan tidak berdesak-desakan."),
          _buildSectionTitle("2. Jamaah Tersesat di Tengah Kerumunan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Tetap tenang dan cari penanda arah seperti pintu keluar atau menggunakan Maqam Ibrahim/lampu hijau sebagai titik kumpul darurat/mendadak."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              " Menggunakan seragam, syal, dan ID Card serta selalu bersama rombongan. Tetapkan titik kumpul sebelum melakukan thawaf untuk berjaga-jaga jika terjadi hal seperti ini. Hubungi jamaah yang hilang menggunakan telepon seluler atau alat komunikasi lainnya seperti HT."),
          _buildSectionTitle("3. Kelelahan atau Cedera"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Lambatkan tempo jalan dan sempatkan untuk beristirahat di tempat yang memungkinkan. Berikan jamaah minum air Zamzam."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              " Menggunakan alas kaki yang bersih saat melakukan thawaf, jangan memaksakan diri, dan lakukan thawaf dengan tempo yang sesuai dengan kemampuan jamaah."),
          _buildSectionTitle("4. Jamaah Dehidrasi"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Memberi jamaah minum dengan mengajak jamaah ke tempat air zam-zam di sekitar tempat thawaf."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              " Pastikan jamaah beristirahat yang cukup sebelum thawaf. Gunakan pakaian yang ringan dan nyaman untuk mengurangi panas tubuh, dan membawa botol air minum serta sering-sering minum untuk menghindari dehidrasi."),
          _buildSectionTitle("5. Keamanan Barang Jamaah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Taruh barang di tempat yang tertutup rapat dan selalu terpantau oleh mata jamaah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              " Menghindari membawa barang berharga, tetap waspada dan menjaga barang bawaan dari orang-orang yang mencurigakan. Berikan sedikit pembekalan perihal keamanan kepada jamaah sebelum berangkat ibadah Umrah."),
          _buildSectionTitle("6. Jamaah Sakit Parah/Pingsan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Berikan pertolongan pertama dan jauhkan dari kerumunan lalu antarkan jamaah ke fasilitas kesehatan terdekat."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              " Bagi jamaah yang sakit parah, harap konsultasi dengan dokter sebelum berangkat dan membawa obat-obatan pribadi saat pelaksanaan ibadah."),
          _buildSectionTitle("Masalah Saat Sa’i"),
          _buildSectionTitle(
              "1. Kepadatan dan Berdesakan di Area Sa’i terutama di Shafa dan Marwah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Tour Leader harus tetap bersama rombongan dan saling menjaga, terutama bagi anak-anak dan lansia."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Melakukan sa’i pada waktu yang kurang padat seperti tengah malam atau dini hari dan memberikan edukasi kepada jamaah tentang pentingnya tertib saat ibadah dan tidak berdesak-desakan."),
          _buildSectionTitle("2. Jamaah Tersesat di Tengah Kerumunan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Tetap tenang dan cari penanda arah seperti pintu keluar atau menggunakan Bukit Shafa atau Marwah sebagai titik kumpul darurat/mendadak."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Menggunakan seragam, syal, dan ID Card serta selalu bersama rombongan. Tetapkan titik kumpul sebelum melakukan sa’i untuk berjaga-jaga jika terjadi hal seperti ini. Hubungi jamaah yang hilang menggunakan telepon seluler atau alat komunikasi lainnya seperti HT."),
          _buildSectionTitle("3. Kelelahan atau Cedera"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Setiap 1 kali balikan Shafa-Marwah berikan jamaah waktu istirahat dan minum air Zamzam, serta diharapkan jamaah membawa botol air minum dan sering-sering minum untuk menghindari dehidrasi."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pastikan jamaah beristirahat yang cukup sebelum sa’i dan menggunakan kain ihram yang ringan dan nyaman untuk mengurangi panas tubuh."),
          _buildSectionTitle("4. Jamaah Tersesat di Tengah Kerumunan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Tetap tenang dan cari penanda arah seperti pintu keluar atau bisa juga menggunakan Maqam Ibrahim/lampu hijau sebagai titik kumpul darurat/mendadak."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Menggunakan seragam, syal, dan ID Card serta selalu bersama rombongan. Tetapkan titik kumpul sebelum melakukan thawaf untuk berjaga-jaga jika terjadi hal seperti ini. Hubungi jamaah yang hilang menggunakan telepon seluler atau alat komunikasi lainnya seperti HT."),
          _buildSectionTitle("5. Kecelakaan dan Cedera"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Memberikan pengobatan dan pertolongan pertama kepada jamaah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Menggunakan alas kaki yang bersih atau kaos kaki anti-slip untuk sa’i, perhatikan saat lari/melangkah dan hati-hati ketika menanjak ke Bukit Shafa dan Marwah."),
          _buildSectionTitle("6. Keamanan Barang Jamaah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Taruh barang di tempat yang tertutup rapat dan selalu terpantau oleh mata jamaah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Menghindari membawa barang berharga, tetap waspada dan menjaga barang bawaan dari orang-orang yang mencurigakan. Berikan sedikit pembekalan perihal keamanan kepada jamaah sebelum berangkat ibadah Umrah."),
          _buildSectionTitle(
              "7. Gangguan Kesehatan seperti Asma, Darah Tinggi, dan Diabetes"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Istirahatkan jamaah, berikan pertolongan pertama, dan jauhkan dari kerumunan. Antarkan jamaah ke fasilitas kesehatan terdekat jika diperlukan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Bagi jamaah yang memiliki penyakit parah, harap konsultasi dengan dokter sebelum berangkat dan membawa obat-obatan pribadi saat pelaksanaan ibadah."),
          _buildSectionTitle("Masalah Saat Tahallul"),
          _buildSectionTitle("1. Antrian Panjang dan Waktu Tunggu Lama"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Pilih tukang cukur yang lebih sedikit antriannya."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Tahallul di tempat yang waktu cukurnya singkat dan jika ingin menghindari antrian, bawa alat cukur pribadi untuk tahallul di hotel nanti."),
          _buildSectionTitle("2. Cedera Saat Cukur"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Obati kepala jamaah yang terluka."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Memilih tukang cukur yang ahli dan berhati-hati. Untuk lebih aman, bawa alat cukur pribadi untuk tahallul di hotel."),
          _buildSectionTitle("3. Barang Hilang Saat Cukur"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Laporkan kepada pihak Lost & Found dan cek CCTV tukang cukur bila perlu."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Menyediakan tempat penyimpanan barang yang aman dan terawasi untuk jamaah saat mereka melakukan tahallul."),
          _buildSectionTitle("Masalah Tasreh Raudhah"),
          _buildSectionTitle(
              "1. Keterlambatan atau Penolakan Pengajuan Tasreh"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Mencari penjual tasreh agar jamaah bisa masuk raudhah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Mengajukan tasreh Raudhah jauh hari sebelum keberangkatan dan memastikan semua persyaratan administrasi terpenuhi."),
          _buildSectionTitle("2. Tasreh Tidak Sah atau Palsu"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Membeli tasreh raudhah kepada pihak terpercaya."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Menggunakan Muassasah untuk pengajuan tasreh Raudhah dan membeli tasreh raudhah kepada pihak terpercaya."),
          _buildSectionTitle("3. Perubahan Jadwal Kunjungan Raudhah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Menyusun jadwal alternatif dan memastikan jamaah tetap mendapat kesempatan berkunjung sesuai dengan tasreh yang berlaku."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Memantau informasi terbaru dari otoritas Masjid Nabawi dan menginformasikan jamaah mengenai kemungkinan perubahan jadwal."),
          _buildSectionTitle(
              "4. Kurangnya Informasi kepada Jamaah mengenai Prosedur Raudhah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Memberikan panduan tertulis dan digital kepada jamaah serta memastikan tour leader siap membantu di lokasi."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Mengadakan sesi briefing dan memberikan pengumuman di grup jamaah yang mendetail sebelum keberangkatan tentang prosedur dan pentingnya tasreh Raudhah."),
          _buildSectionTitle("5. Keadaan Tidak Terduga di Raudhah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Pastikan tour leader atau staf pendamping selalu siap membantu jamaah di lokasi untuk mengurus masalah yang mungkin muncul. Jika terjadi masalah dengan tasreh, siapkan kegiatan alternatif untuk jamaah sambil menunggu penyelesaian masalah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Memiliki nomor kontak darurat atau mandub yang mengurus tasreh raudhah."),
          _buildSectionTitle("6. Anak Tidak Bisa Masuk Raudhah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Menitipkan anak kepada orang tua/petugas yang sedang tidak memasuki raudhah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Memberi tahu jamaah bahwa anak usia dini tidak bisa masuk raudhah."),
          _buildSubSection(
              "Dengan memperhatikan solusi dan pencegahan yang disorot, semoga jamaah dapat menghadapi dan mengatasi setiap tantangan dengan lebih siap dan tenang selama perjalanan ibadah Umrah mereka."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class MasalahKeamanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Keamanan"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Masalah Jamaah Kecopetan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Laporkan segera ke bagian lost and found atau petugas keamanan terdekat."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Gunakan tas yang aman dan jangan simpan barang berharga di tempat yang mudah diakses."),
          _buildSectionTitle("Masalah Kecelakaan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Hubungi Muthawwif atau kabari ke Manajemen lalu segera cari bantuan medis."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Selalu berhati-hati saat menyebrang dan selalu ikuti aturan lalu lintas."),
          _buildSectionTitle("Masalah Kebakaran di Penginapan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Ikuti jalur evakuasi dan petunjuk dari petugas atau pegawai hotel."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Jangan menyalakan api di kamar hotel dan ketahui lokasi jalur evakuasi serta alat pemadam kebakaran."),
          _buildSectionTitle("Masalah Perang atau Terorisme"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Ikuti arahan otoritas dan evakuasi jika diperlukan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Hindari tempat-tempat yang dianggap berisiko tinggi."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class MasalahAdministratif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Administrat                 if"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle(
              "Masalah Kesalahan atau Kelalaian dalam Pengajuan Visa Ziarah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Laporkan segera ke bagian lost and found atau petugas keamanan terdekat."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Sediakan dokumen cadangan dan kontak darurat untuk meminta soft file visa atau pengajuan tasreh secara cepat."),
          _buildSectionTitle(
              "Masalah Prosedur Imigrasi yang Panjang dan Rumit"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Berkoordinasi dengan petugas bandara untuk mendapatkan bantuan atau prioritas pemeriksaan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Siapkan semua dokumen dan serahkan kepada tim handling untuk pemeriksaan cepat."),
          _buildSectionTitle("Masalah Perubahan Jadwal Penerbangan dan Bus"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Cari alternatif transportasi dan informasikan peserta tentang kemungkinan perubahan jadwal."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pastikan konfirmasi tiket penerbangan dan atur jadwal transportasi dengan cadangan waktu yang cukup."),
          _buildSectionTitle(
              "Masalah Kesalahan Booking Hotel dan Fasilitas Tidak Sesuai"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Hubungi manajemen hotel untuk mengonfirmasi dan ubah pemesanan jika memungkinkan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Adakan pertemuan dengan pihak hotel sebelum keberangkatan dan tinjau fasilitas yang disediakan."),
          _buildSectionTitle("Masalah Muthawwif/Guide Tidak Bersama Jamaah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Miliki kontak darurat muthawwif atau guide lain untuk menggantikan jika diperlukan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pastikan komunikasi dan kesepakatan tertulis dengan muthawwif atau guide melalui TTD akad kerja."),
          _buildSectionTitle("Masalah Pembengkakan Biaya Operasional"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Petugas memberikan laporan keuangan yang transparan dan sediakan dana cadangan untuk keadaan darurat."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Susun anggaran yang detail dan realistis sesuai dengan kebutuhan di Tanah Suci."),
          _buildSectionTitle("Masalah Kegiatan Tidak Sesuai Itinerary"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Hubungi manajemen dan susun rencana alternatif, serta komunikasikan dengan jelas kepada jamaah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Rencanakan program dengan waktu cadangan yang cukup dan pertimbangkan kondisi lokal."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class MasalahHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Hotel"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Masalah Kualitas dan Kebersihan Kamar"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Melaporkan kepada manajemen hotel untuk perubahan kamar atau peningkatan layanan kebersihan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Melakukan survei sebelum perjalanan untuk memeriksa kondisi kamar dan fasilitas."),
          _buildSectionTitle("Masalah Fasilitas yang Tidak Lengkap"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Menghubungi manajemen hotel untuk perbaikan atau pelengkapan fasilitas yang kurang seperti heater."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Memastikan ketersediaan fasilitas sebelum keberangkatan."),
          _buildSectionTitle("Masalah Pelayanan Staf yang Kurang Ramah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Melaporkan ke manajemen hotel dan meminta bantuan staf yang lebih profesional."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Memilih hotel dengan reputasi baik berdasarkan ulasan."),
          _buildSectionTitle(
              "Masalah Keterbatasan Kamar karena Kapasitas Hotel Penuh"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Berkoordinasi dengan manajemen hotel untuk mendapatkan akomodasi alternatif tanpa biaya tambahan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Melakukan pemesanan kamar jauh sebelum keberangkatan dengan konfirmasi tertulis."),
          _buildSectionTitle("Masalah Lokasi Hotel yang Tidak Strategis"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Menyediakan transportasi shuttle antar-jemput yang efisien untuk memudahkan akses ke Masjid atau tempat ibadah utama."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Memilih hotel yang strategis dan dekat dengan lokasi yang diinginkan."),
          _buildSectionTitle("Masalah Biaya Tambahan yang Tidak Jelas"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Klarifikasi dengan manajemen hotel mengenai biaya tambahan yang tidak wajar."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Memastikan semua biaya dan kebijakan tertulis dalam booking confirmation."),
          _buildSectionTitle(
              "Masalah Tidak Cocoknya Makanan Hotel dengan Selera Jamaah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Mengumpulkan masukan dari jamaah mengenai preferensi makanan dan berkoordinasi dengan hotel untuk menyesuaikan menu."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Jamaah menyiapkan makanan alternatif sesuai kebutuhan pribadi."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class MasalahTransportasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Transportas                 i"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Masalah Keterlambatan Transportasi"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Berkoordinasi dengan supir bus untuk memastikan jadwal ketibaan bus di tempat jamaah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Memilih jadwal transportasi yang menyediakan waktu luang untuk mengatasi kemungkinan keterlambatan."),
          _buildSectionTitle("Masalah Teknis pada Kendaraan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Memiliki akses ke layanan bengkel darurat dan menyediakan kendaraan pengganti jika diperlukan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Muassasah memeriksa kondisi kendaraan secara berkala dan memilih muassasah yang memiliki rekam jejak yang baik."),
          _buildSectionTitle(
              "Masalah Jamaah tidak Disiplin dalam Mematuhi Jadwal Transportasi"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Komunikasi melalui grup WhatsApp atau pengumuman langsung untuk mengingatkan jamaah tentang jadwal transportasi."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Mengedukasi jamaah tentang pentingnya disiplin waktu dan memberikan briefing jadwal secara jelas sebelum keberangkatan."),
          _buildSectionTitle("Masalah Kesulitan Akses ke Tempat Ibadah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Menggunakan taksi atau shuttle yang tidak mengikuti jalur umum untuk memudahkan akses ke tempat ibadah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Mengidentifikasi rute atau kendaraan alternatif seperti taksi pada jam sibuk."),
          _buildSectionTitle(
              "Masalah Kesulitan dalam Berkomunikasi dengan Sopir"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Membekali tour leader atau muthawwif dengan kemampuan bahasa yang diperlukan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Memilih sopir yang dapat berkomunikasi dalam bahasa Indonesia atau memastikan muthawwif ikut di dalam bus jamaah."),
          _buildSectionTitle("Masalah Kemacetan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Mencari rute alternatif atau berangkat lebih awal untuk menghindari kemacetan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Mempelajari rute dan kondisi lalu lintas sebelum berangkat."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class MasalahKomunikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Komunikasi"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Masalah Perbedaan Bahasa"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Gunakan aplikasi penerjemah untuk mempermudah komunikasi dengan penduduk setempat."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pelajari kata-kata dasar dalam bahasa Arab atau Inggris sebelum perjalanan."),
          _buildSectionTitle("Masalah Jaringan Internet yang Buruk"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Cari tempat dengan koneksi internet lebih stabil, seperti di hotel atau kafe dengan WiFi."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Beli SIM card lokal yang memiliki jaringan kuat atau gunakan layanan roaming yang andal."),
          _buildSectionTitle("Masalah Menghubungi Keluarga"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Gunakan aplikasi komunikasi seperti WhatsApp, Google Meet, atau Zoom."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Tentukan waktu komunikasi dengan keluarga sebelum berangkat dan siapkan perangkat serta aplikasi."),
          _buildSectionTitle("Masalah Mencari Informasi Lokal"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Tanyakan pada penduduk lokal atau petugas informasi di area yang dikunjungi."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Bawa buku panduan atau unduh aplikasi atau peta dengan informasi penting sebelum berangkat."),
          _buildSectionTitle("Masalah Komunikasi dengan Sopir"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Pastikan tour leader atau Muthawwif bisa berkomunikasi atau gunakan aplikasi penerjemah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pastikan Muthawwif ikut atau pilih sopir yang bisa berbahasa Indonesia atau bahasa yang jamaah pahami."),
          _buildSectionTitle(
              "Masalah Perbedaan Ekspektasi Jamaah dan Tour Leader"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Lakukan dialog terbuka untuk menjelaskan situasi dan menyesuaikan ekspektasi."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Berikan penjelasan lengkap tentang program umrah dan paket perjalanan sebelum keberangkatan."),
          _buildSectionTitle("Masalah Konflik Antarjamaah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Tour leader harus berperan sebagai mediator untuk menyelesaikan konflik secara objektif."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Adakan sesi perkenalan dan pembekalan sebelum perjalanan untuk mempererat kebersamaan."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class MasalahPsikologis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Psikologis"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Masalah Rasa Takut atau Cemas"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Buka sesi curhat dan ajak jamaah untuk berbicara dengan sesama jamaah atau pembimbing."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Persiapkan mental dan spiritual sebelum perjalanan dengan mengikuti kajian atau pembekalan rohani."),
          _buildSectionTitle("Masalah Kebingungan di Tempat Baru"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Minta bantuan dari petugas atau orang yang berpengalaman untuk menjelaskan hal-hal yang belum diketahui."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pelajari peta dan tata letak tempat-tempat penting sebelum berangkat."),
          _buildSectionTitle("Masalah Kerinduan pada Keluarga"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Sering berkomunikasi dengan keluarga melalui telepon atau aplikasi video call."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Atur jadwal komunikasi dengan keluarga sebelum berangkat."),
          _buildSectionTitle("Masalah Jamaah Mengalami Stres"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Ajak jamaah untuk melakukan ibadah yang menenangkan seperti zikir dan doa."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Buat jadwal ibadah yang fleksibel dan beri waktu istirahat yang cukup."),
          _buildSectionTitle(
              "Masalah Kesulitan Beradaptasi dengan Budaya Lokal"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Ajak jamaah untuk terbuka dan menghargai budaya setempat."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pelajari budaya lokal seperti tata cara berpakaian dan sopan santun."),
          _buildSectionTitle("Masalah Kehilangan Fokus atau Motivasi Ibadah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Berikan motivasi tambahan dan dukungan moral kepada jamaah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Tetapkan tujuan ibadah yang jelas dan dorong jamaah untuk tetap fokus."),
          _buildSectionTitle(
              "Masalah Jamaah Merasa Bersalah karena Tidak Maksimal dalam Beribadah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Berikan bimbingan agama dan dukungan moral yang positif."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint("Dukung jamaah dalam setiap usaha ibadah mereka."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class MasalahCuaca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Cuaca"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Masalah Cuaca Terlalu Panas atau Dingin"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Tetapkan jadwal ibadah atau kunjungan pada waktu yang lebih sejuk, seperti pagi atau sore hari. Pastikan tersedia tempat berteduh atau istirahat di area ibadah atau tempat bersejarah."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Sarankan jamaah membawa topi, kacamata hitam, dan pelindung dari sinar matahari. Jaga hidrasi dengan minum air secara teratur."),
          _buildSectionTitle("Masalah Kekeringan atau Kekurangan Air"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Hemat penggunaan air dan cari sumber air alternatif jika diperlukan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Siapkan persediaan air yang cukup sebelum perjalanan untuk berjaga-jaga."),
          _buildSectionTitle(
              "Masalah Cuaca Ekstrem (Terlalu Panas atau Dingin"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Beri tahu jamaah untuk membawa perlengkapan yang sesuai, seperti jaket, payung, atau pelindung matahari. Selalu sesuaikan pakaian dengan kondisi cuaca."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Informasikan kepada jamaah kondisi cuaca yang akan dihadapi di setiap lokasi dan anjurkan mereka membawa pakaian yang sesuai."),
          _buildSectionTitle("Masalah Hujan atau Badai Salju"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Siapkan alternatif untuk kegiatan di luar ruangan jika terjadi cuaca buruk, seperti mengunjungi tempat bersejarah atau tempat ibadah indoor."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Periksa ramalan cuaca secara berkala dan pastikan jamaah membawa perlengkapan hujan, payung, dan alas kaki tahan air."),
          _buildSectionTitle("Masalah Kesulitan Berkomunikasi dengan Sopir"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Berbekal kemampuan bahasa yang diperlukan atau menggunakan aplikasi penerjemah. Tour leader atau Muthawwif yang menguasai bahasa dapat membantu."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pastikan Muthawwif berada di bus dengan jamaah atau pilih sopir yang dapat berkomunikasi dalam bahasa Indonesia."),
          _buildSectionTitle("Masalah Banjir atau Badai Hujan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Jika cuaca buruk, tetap di hotel atau mencari tempat aman jika sedang di luar."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pantau terus kondisi cuaca di Arab Saudi, karena kadang sulit diprediksi, dan buat perencanaan yang fleksibel."),
          _buildSectionTitle("Masalah Kebakaran Hutan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Ikuti petunjuk evakuasi dari pihak berwenang jika terjadi kebakaran hutan di area sekitar."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pantau situasi di sekitar dan hindari area yang rawan kebakaran selama perjalanan."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class MasalahTeknologi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Potensi Masalah Teknologi"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Masalah Baterai Habis di Tengah Jalan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Bawa power bank sebagai cadangan untuk mengisi daya perangkat."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pastikan semua perangkat terisi penuh sebelum berangkat."),
          _buildSectionTitle(
              "Masalah Kesulitan Menggunakan Aplikasi Penerjemah"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Pelajari cara penggunaan aplikasi penerjemah sebelumnya."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint("Latih penggunaan aplikasi sebelum perjalanan."),
          _buildSectionTitle(
              "Masalah Cuaca Ekstrem (Terlalu Panas atau Dingin"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Bawa perlengkapan sesuai cuaca seperti jaket atau payung."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint("Informasikan jamaah mengenai kondisi cuaca."),
          _buildSectionTitle("Masalah Koneksi Internet di Penginapan"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Gunakan data seluler atau cari WiFi publik."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Pilih penginapan dengan koneksi internet yang baik."),
          _buildSectionTitle("Masalah Kerusakan Perangkat Elektronik"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Bawa perangkat cadangan atau cari tempat servis terdekat."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Gunakan casing tambahan dan simpan perangkat dengan aman."),
          _buildSectionTitle("Kesulitan Menggunakan GPS"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint(
              "Pelajari peta manual atau hafalkan rute sebagai cadangan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Download peta offline dan pelajari rute sebelum berangkat."),
          _buildSectionTitle(
              "Masalah Kesalahan dalam Penggunaan Aplikasi Nusuk"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Minta bantuan dari Tour Leader atau Muthawwif."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint("Pelajari aplikasi Nusuk sebelum perjalanan."),
          _buildSectionTitle("Masalah Kehilangan Handphone"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Laporkan kehilangan dan gunakan fitur pelacakan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Simpan handphone di tempat aman dan aktifkan fitur pelacakan."),
          _buildSectionTitle("Masalah dengan Power Bank atau Charger"),
          _buildSubSection("Solusi:"),
          _buildBulletPoint("Bawa power bank atau charger cadangan."),
          _buildSubSection("Pencegahan:"),
          _buildBulletPoint(
              "Periksa semua perangkat charging sebelum perjalanan."),
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

  Widget _buildSubSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
