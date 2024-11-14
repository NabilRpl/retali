import 'package:flutter/material.dart';

class MakamBaqi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Makam Baqi")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, hari ini kita berada di pemakaman Maqi, tempat yang penuh sejarah. Di sinilah para sahabat, keluarga Rasulullah shallallahu ‘alaihi wa sallam, dan orang-orang saleh dimakamkan. Semoga kehadiran kita di sini menambah kecintaan kita pada Rasulullah dan meningkatkan ketakwaan kita."),
          _buildBulletPoint("Jamaah Retali, di sini kita bisa melihat perbedaan pemakaman Al-Baqi ini dengan yang kita temui di Indonesia. Sesuai dengan tuntunan Islam, di sini kuburan-kuburan hanya ditandai dengan batu sederhana, tanpa bangunan atau hiasan khusus. Hal ini mengikuti sunnah Rasulullah shallallahu ‘alaihi wa sallam yang mengajarkan kesederhanaan dan menjauhi hal-hal berlebihan dalam pemakaman. Sebagaimana dalam hadits, Rasulullah shallallahu ‘alaihi wa sallam bersabda:"),
          _buildBulletPoint("Dahulu Rasulullah shallallahu ‘alaihi wa sallam melarang untuk membangun di atas kuburan, menambah tinggi tanahnya, atau memberikan tanda khusus di atasnya. (HR. Muslim)."),
          _buildBulletPoint("Hal ini mengajarkan bahwa pemakaman adalah tempat yang seharusnya tetap sederhana, mengingatkan kita pada kematian dan pentingnya beramal saleh. Di sini, kita juga dapat melihat bahwa para sahabat dan keluarga Rasulullah dimakamkan dengan cara yang sangat sederhana, menunjukkan bahwa yang utama bukanlah bangunan atau tanda di atas makam, melainkan amal kebaikan yang kita persiapkan selama hidup."),
          _buildBulletPoint("Sebagai umat Islam, kita disyariatkan untuk berziarah kubur guna mengingatkan diri akan kehidupan akhirat, seperti yang diajarkan oleh Rasulullah shallallahu ‘alaihi wa sallam dalam hadits, 'Berziarahlah kalian ke kuburan, karena ziarah kubur itu akan mengingatkan kalian pada akhirat.' (HR. Muslim). Ziarah kubur adalah bentuk ibadah yang menguatkan hati, menjauhkan kita dari kecintaan berlebihan pada dunia, dan mendekatkan diri pada Allah dengan mengingat kehidupan setelah kematian."),
          _buildBulletPoint("Mari kita gunakan kesempatan Perjalanan Umrah ini untuk berdoa kepada Allah, menyampaikan salam kepada para penghuni pemakaman ini, dan memohon ampunan serta rahmat-Nya untuk mereka dan untuk diri kita sendiri. Dengan demikian, ziarah ini dapat menjadi kegiatan yang bermanfaat bagi diri kita."),
          _buildSubSection("Terima kasih atas perhatian Jamaah Retali. Wassalamualaikum warahmatullahi wabarakatuh."),
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