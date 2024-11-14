import 'package:flutter/material.dart';

class MasjidUmarBinKhatab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bimbingan Ibadah Umrah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Di tempat yang mulia ini, kita sekarang berada di depan Masjid Umar bin Khattab رضي الله عنه, yang didedikasikan untuk sahabat Nabi yang dikenal dengan keberanian dan keteguhannya dalam menegakkan keadilan. Masjid ini menjadi saksi bisu perjuangan beliau dalam menegakkan kebenaran."),
          _buildBulletPoint("Saat ini, masjid ini masih berdiri kokoh di salah satu sudut dekat Masjid Nabawi, mengingatkan kita akan sifat kuat Umar رضي الله عنه yang menjadi perisai bagi umat Islam. Dengan arsitektur sederhana namun kokoh, masjid ini adalah cerminan karakter Umar رضي الله عنه yang tegas namun selalu mengedepankan kasih sayang pada umat."),
          _buildBulletPoint("Umar رضي الله عنه adalah khalifah kedua yang dikenal karena reformasi sosial dan ekonominya. Beliau yang memperkenalkan kalender Hijriyah, mengatur peradilan Islam, dan memperhatikan kesejahteraan rakyatnya. Rasulullah ﷺ bersabda, “Jika ada nabi setelahku, maka Umar-lah orangnya.” (HR. Tirmidzi)."),
          _buildBulletPoint("Di sini kita diingatkan bahwa menjadi Muslim berarti berani untuk berbuat adil, untuk menegakkan kebenaran walaupun itu sulit. Semoga kita semua diberikan kekuatan untuk selalu berbuat baik sebagaimana yang Umar رضي الله عنه contohkan. Aamiin."),
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
