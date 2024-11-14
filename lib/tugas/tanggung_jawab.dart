import 'package:flutter/material.dart';

class TanggungJawab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Definisi Tour Leader Umrah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Tour Leader Umrah (TL)"),
          _buildParagraph(
              "Tour Leader Umrah atau TL adalah seseorang yang ditunjuk oleh Manajemen untuk memimpin, membimbing, dan mengatur jamaah umrah selama perjalanan ibadah ke Tanah Suci. Perannya penting dalam memastikan seluruh kegiatan umrah berjalan lancar, sesuai dengan sunnah dan syariat Islam, serta memberikan pengalaman yang berkesan bagi jamaah."),
          _buildSectionTitle("Tanggung Jawab Umum Tour Leader Umrah"),

          // Responsibility 1
          _buildResponsibilitySection(
            "1. Perencanaan dan Koordinasi Perjalanan",
            [
              "Mengatur Itinerary: Menyusun jadwal perjalanan rinci termasuk penerbangan, akomodasi, dan transportasi lokal.",
              "Koordinasi dengan Pihak Terkait: Bekerja sama dengan tim handling bandara, hotel, dan penyedia transportasi untuk memastikan semua kebutuhan logistik terpenuhi."
            ],
          ),

          // Responsibility 2
          _buildResponsibilitySection(
            "2. Bimbingan Ibadah",
            [
              "Membantu Pelaksanaan Ibadah Umrah: Membimbing jamaah tentang tata cara ibadah umrah seperti thawaf, sa’i, dan tahallul.",
              "Memberikan Pemahaman Keagamaan: Menjelaskan makna setiap prosesi agar jamaah dapat merasakan pengalaman ibadah yang mendalam."
            ],
          ),

          // Responsibility 3
          _buildResponsibilitySection(
            "3. Manajemen Rombongan Jamaah",
            [
              "Pengelolaan Jamaah: Mengatur dan memastikan setiap jamaah merasa terlayani.",
              "Penyelesaian Konflik: Menyelesaikan masalah atau konflik yang mungkin timbul di antara jamaah dengan bijaksana."
            ],
          ),

          // Responsibility 4
          _buildResponsibilitySection(
            "4. Pendampingan dan Keamanan",
            [
              "Pendampingan Jamaah: Memberikan bantuan kepada jamaah yang membutuhkan, seperti lansia atau yang memiliki kebutuhan khusus.",
              "Kesehatan dan Keselamatan: Memastikan jamaah tetap sehat dan aman selama perjalanan, serta menangani situasi darurat medis."
            ],
          ),

          // Responsibility 5
          _buildResponsibilitySection(
            "5. Penyuluhan dan Informasi",
            [
              "Memberikan Informasi Penting: Menyampaikan aturan setempat dan tata tertib di Tanah Suci.",
              "Edukasi Sejarah: Menyampaikan sejarah dan keutamaan tempat-tempat yang dikunjungi."
            ],
          ),

          // Responsibility 6
          _buildResponsibilitySection(
            "6. Pengaturan Logistik",
            [
              "Transportasi: Mengatur transportasi selama di Mekkah dan Madinah.",
              "Akomodasi: Memastikan penginapan nyaman dan sesuai standar."
            ],
          ),

          // Responsibility 7
          _buildResponsibilitySection(
            "7. Komunikasi Efektif",
            [
              "Menyampaikan Informasi Tepat Waktu: Memberi informasi perubahan jadwal atau aktivitas.",
              "Berkomunikasi dengan Pihak Lain: Menjalin komunikasi yang baik dengan hotel, muthawwif, transportasi, dan pihak berwenang lainnya."
            ],
          ),

          // Responsibility 8
          _buildResponsibilitySection(
            "8. Administrasi dan Dokumentasi",
            [
              "Mengelola Dokumen Perjalanan: Mengelola paspor, visa, tiket, dan dokumen perjalanan lainnya.",
              "Pendataan dan Pelaporan: Mencatat dan melaporkan segala aktivitas selama perjalanan."
            ],
          ),

          // Responsibility 9
          _buildResponsibilitySection(
            "9. Pelayanan Pelanggan",
            [
              "Memberikan Pelayanan Prima: Melayani jamaah dengan ramah, profesional, dan responsif.",
              "Menjaga Kepuasan Jamaah: Berupaya memberikan pengalaman terbaik bagi jamaah."
            ],
          ),

          // Responsibility 10
          _buildResponsibilitySection(
            "10. Kesiapan dan Adaptabilitas",
            [
              "Menghadapi Tantangan: Siap menghadapi situasi tak terduga selama perjalanan.",
              "Adaptasi Tinggi: Mampu beradaptasi dengan cepat terhadap perubahan."
            ],
          ),
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

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildResponsibilitySection(String title, List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(title),
        ...points.map((point) => _buildBulletPoint(point)).toList(),
      ],
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
}
