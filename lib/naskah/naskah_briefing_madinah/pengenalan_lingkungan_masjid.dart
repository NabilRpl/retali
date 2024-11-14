import 'package:flutter/material.dart';

class MasjidQuba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bimbingan Ibadah Umrah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, hari ini kita mendapat kesempatan untuk berada di dekat Masjid Ali bin Abi Thalib رضي الله عنه. Saat kita berdiri di sini, mari kita mengenang salah satu sosok paling pemberani, sahabat dan juga menantu Rasulullah ﷺ, Ali bin Abi Thalib رضي الله عنه. Ali dikenal karena keilmuan dan kebijaksanaannya, serta keberaniannya di medan perang."),
          _buildBulletPoint("Masjid ini berfungsi sebagai tempat ibadah dan tempat Ali رضي الله عنه sering menghabiskan waktu untuk bertafakur dan berdoa. Di tengah kota Madinah yang berkembang ini, masjid ini masih memancarkan kesederhanaan dan nilai sejarah yang luar biasa. Kini, desain arsitekturnya terlihat lebih modern dengan sentuhan klasik, namun tetap mempertahankan atmosfer kedamaian."),
          _buildBulletPoint("Ali bin Abi Thalib رضي الله عنه adalah pintu ilmu bagi umat Islam. Beliau pernah berkata, “Barang siapa yang mengenal dirinya, maka ia mengenal Tuhannya.” Dari sini kita diingatkan untuk selalu introspeksi, memperbaiki diri, dan menambah ilmu demi meraih kedekatan dengan Allah."),
          _buildBulletPoint("Kita belajar dari Ali رضي الله عنه bahwa iman harus diiringi dengan pemahaman yang mendalam dan amalan yang ikhlas. Semoga kita bisa meneladani keteguhan hati Ali رضي الله عنه dan mengambil hikmah dari setiap langkah hidup kita."),
          _buildSubSection("Wassalamu’alaikum warahmatullahi wabarakatuh."),
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
      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
