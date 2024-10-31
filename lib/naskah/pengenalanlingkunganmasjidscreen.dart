import 'package:flutter/material.dart';

class NaskahPengenalanLingkunganMasjid extends StatelessWidget {
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
                borderRadius: BorderRadius.circular(10), // Rounded corners for the box
              ),
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Naskah Pengenalan Lingkungan Masjid', // Title text
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
                  borderRadius: BorderRadius.circular(10), // Rounded corners for the box
                ),
                padding: const EdgeInsets.all(16.0), // Padding inside the container
                child: SingleChildScrollView(
                  child: Text(
                    '''Assalamu'alaikum warahmatullahi wabarakatuh,

Bismillahirrahmanirrahim,
Alhamdulillahi rabbil 'alamin, segala puji bagi Allah عز وجل yang telah memberikan kita nikmat iman, kesehatan, dan kesempatan sehingga kita dapat berkumpul di sini dalam keadaan yang penuh berkah.

Shalawat serta salam semoga senantiasa tercurahkan kepada junjungan kita Nabi Besar Muhammad ﷺ, beserta keluarga, sahabat, dan para pengikutnya yang setia hingga akhir zaman.

Para jamaah yang dirahmati Allah,
Alhamdulillah, kita semua telah tiba di kota Madinah, kota yang penuh dengan keberkahan dan sejarah agung dalam Islam. Salah satu tempat yang paling mulia di kota ini adalah Masjid Nabawi, masjid yang dibangun oleh Rasulullah ﷺ.

Dalam kesempatan ini, kita akan mengenalkan lingkungan Masjid Nabawi agar kita semua dapat memahami dan menghargai tempat suci ini dengan sebaik-baiknya.

Masjid Nabawi:
Masjid Nabawi adalah salah satu dari tiga masjid yang dianjurkan untuk dikunjungi dalam Islam. Shalat di Masjid Nabawi memiliki keutamaan yang besar, di mana Rasulullah ﷺ bersabda bahwa satu kali shalat di Masjid Nabawi lebih utama daripada seribu shalat di masjid lainnya, kecuali Masjidil Haram.

Raudhah:
Di dalam Masjid Nabawi terdapat Raudhah, yang disebut sebagai salah satu taman surga. Raudhah terletak di antara mimbar dan makam Rasulullah ﷺ. Tempat ini sangat dianjurkan untuk berdoa, karena doa di Raudhah sangat mustajab.

Makam Rasulullah ﷺ:
Di Masjid Nabawi juga terdapat makam Rasulullah ﷺ, serta makam dua sahabat beliau, Abu Bakar Ash-Shiddiq dan Umar bin Khattab.

Pintu-Pintu Utama Masjid:
Masjid Nabawi memiliki beberapa pintu utama, seperti Bab as-Salam dan Bab al-Baqi'. Jamaah diharapkan untuk mengenali pintu-pintu ini agar memudahkan akses masuk dan keluar dari masjid, serta penting untuk mengingat nomor pintu masjid.

Masjid Lain di Sekitar Masjid Nabawi:
Di sekitar Masjid Nabawi terdapat beberapa masjid bersejarah, di antaranya Masjid Al-Ghamamah, Masjid Ali bin Abi Thalib, dan Masjid Abu Bakar.

Para jamaah yang berbahagia,
Marilah kita manfaatkan waktu kita di Masjid Nabawi dengan sebaik-baiknya. Perbanyaklah ibadah, zikir, dan doa. Jaga adab dan sopan santun selama berada di lingkungan masjid, serta hormati sesama jamaah.

Semoga Allah عز وجل menerima semua amal ibadah kita dan memberikan kita keberkahan serta kemudahan dalam menjalankan ibadah di kota Madinah ini.

Demikian yang dapat saya sampaikan. Semoga kita semua mendapatkan berkah dan rahmat dari Allah عز وجل.

Wassalamu'alaikum warahmatullahi wabarakatuh.''',
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
    home: NaskahPengenalanLingkunganMasjid(),
  ));
}