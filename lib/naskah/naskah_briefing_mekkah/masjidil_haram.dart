import 'package:flutter/material.dart';

class MasjidilHaram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjidil Haram")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah. Alhamdulillah, segala puji hanya bagi Allah Azza wa Jalla yang telah memberi kita kesempatan berada di Masjidil Haram, masjid yang paling mulia di muka bumi. Shalawat dan salam kita sampaikan kepada Nabi Muhammad ﷺ, teladan kita yang mengajarkan kebaikan dan keutamaan dalam beribadah."),
          _buildBulletPoint("Di sinilah berdiri Ka’bah, kiblat bagi umat Islam di seluruh dunia, yang dijadikan Allah sebagai pusat bagi mereka yang beribadah. Allah berfirman, “Dan sucikanlah rumah-Ku ini bagi orang-orang yang thawaf, i'tikaf, ruku', dan sujud.” (QS. Al-Hajj: 26). Setiap kali kita melaksanakan shalat di sini, nilainya setara dengan seratus ribu kali shalat di tempat lain. Begitu besar keutamaan tempat ini, yang menjadi fokus utama dalam ibadah haji dan umrah."),
          _buildBulletPoint("Masjidil Haram saat ini diperluas dan dilengkapi teknologi modern yang memudahkan jamaah dalam beribadah. Di sini juga terdapat Hajar Aswad, batu dari surga yang dicium oleh Nabi ﷺ. Selain itu, ada Maqam Ibrahim, tempat di mana Nabi Ibrahim عليه السلام berdiri saat membangun Ka’bah. Terdapat pula Multazam, tempat mustajab untuk berdoa, antara Hajar Aswad dan pintu Ka'bah."),
          _buildBulletPoint("Mari kita manfaatkan waktu di Masjidil Haram ini dengan memperbanyak doa, dzikir, dan ibadah, memohon ampunan dan rahmat dari Allah. Semoga Allah menerima amal kita di tempat suci ini dan melimpahkan kita dengan keberkahan-Nya."),
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
