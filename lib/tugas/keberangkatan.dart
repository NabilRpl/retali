import 'package:flutter/material.dart';

class Keberangkatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TUPersiapan Sebelum Keberangkatan Umrah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Persiapan Sebelum Keberangkatan"),

          _buildSubSectionTitle("Menghadiri Manasik Umrah"),
          _buildBulletPoint("Kehadiran Tour Leader (TL) dalam Manasik Umrah bersama jamaah sangat bermanfaat. Pertemuan pertama ini membantu TL membangun hubungan baik dan menciptakan rasa percaya. Jamaah akan merasa lebih nyaman dan yakin karena telah bertemu langsung dengan TL yang akan mendampingi mereka. TL juga dapat mengidentifikasi jamaah yang memiliki kebutuhan dan karakteristik khusus."),
          
          _buildSubSectionTitle("Memimpin Grouping Saat Manasik"),
          _buildBulletPoint("Berkumpul dengan jamaah untuk berkenalan dan memberikan informasi penting tentang itinerary, persiapan fisik dan mental, serta materi bimbingan ibadah. Ajak jamaah untuk meluruskan niat dan mengedepankan pentingnya kekeluargaan."),
          
          _buildSubSectionTitle("Memasuki Grup Keberangkatan"),
          _buildBulletPoint("Seorang TL perlu bergabung dalam WhatsApp Group (WAG) keberangkatan untuk memastikan koordinasi yang efektif, penyampaian informasi yang cepat, dan komunikasi dua arah dengan para jamaah. WAG juga membantu dalam meningkatkan kesiapan, membangun kebersamaan, dan mendokumentasikan perjalanan sehingga pengalaman umrah menjadi lebih lancar dan menyenangkan bagi semua pihak (mitra, manajemen, dan jamaah/beserta keluarga jamaah)."),
          
          _buildSubSectionTitle("Memberi Pengarahan dan Persiapan"),
          _buildBulletPoint("TL perlu menyampaikan jadwal keberangkatan dan kepulangan, informasi dokumen penting seperti paspor dan visa, daftar perlengkapan yang harus dibawa, prosedur keberangkatan di bandara, detail akomodasi dan transportasi di Tanah Suci, itinerary, aturan dan etika ibadah, kontak darurat, serta tips dan trik untuk kenyamanan dan keamanan jamaah."),
          
          _buildSubSectionTitle("Menghafal Nama Jamaah"),
          _buildBulletPoint("TL perlu menghafal nama setiap jamaah untuk mengenali mereka secara individu, guna membangun hubungan yang lebih dekat dan personal. Ini juga memudahkan komunikasi dan manajemen situasi darurat jika dibutuhkan."),
          
          _buildSubSectionTitle("Bergabung di Grup Officer dan Komunikasi Intens"),
          _buildBulletPoint("Seorang TL perlu menjalin komunikasi intens dengan manajemen sebelum keberangkatan untuk memahami persyaratan dan kebijakan, menyampaikan informasi dari rekan di Grup Officer, dan bersiap menghadapi situasi darurat bersama demi kelancaran perjalanan."),
          
          _buildSubSectionTitle("Pengecekan Kesiapan Dokumen"),
          _buildBulletPoint("Pastikan semua dokumen perjalanan seperti paspor, visa, tiket, dan surat keterangan kesehatan lengkap dan valid. Berkomunikasi dengan agen travel untuk memastikan semua persiapan logistik, termasuk akomodasi dan transportasi, telah diatur."),
          
          _buildSubSectionTitle("Menghafal Naskah Briefing"),
          _buildBulletPoint("Menghafal naskah briefing penting bagi TL Umrah untuk memastikan keakuratan informasi yang disampaikan, menghindari kesalahan, dan memberikan kesan profesional yang membangun kepercayaan."),
          
          _buildSubSectionTitle("Koordinasi Sebelum Hari Keberangkatan"),
          _buildBulletPoint("Koordinasi sebelum hari H keberangkatan Umrah sangat penting bagi petugas untuk memastikan kelancaran dan kesiapan seluruh aspek perjalanan. Petugas dapat mengonfirmasi jadwal keberangkatan, memeriksa kelengkapan dokumen, dan memastikan semua perlengkapan yang diperlukan telah siap."),
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

  Widget _buildSubSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
}
