import 'package:flutter/material.dart';
import 'doa_dzikir_antara_rukun_yamani_dan_hajar_aswad.dart';
import 'doa_dzikir_saat_berada_dishafa_dan_marwah_ketika_melaksanakan_sai.dart';
import 'doa_dzikir_saat_menghadapkan_wajah_ke_hajar_aswad.dart';
import 'doa_dzikir_saat_menuju_maqam_ibrahim_setelah_selesai_thawaf.dart';
import 'doa_dzikir_saat_menuju_shafa_untuk_mengawali_sai.dart';
import 'doa_ketika_melakukan_raml.dart';
import 'doa_niat_ihram_screen.dart';
import 'doa_saat_kehendak_minum_air_zam_zam.dart';
import 'doa_talbiyah_screen.dart';

class DoaDoaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DOA-DOA',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 250,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF673AB7), Color(0xFF9575CD)],
                ),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/images/quran.png',
                  fit: BoxFit.cover,
                  height: 150,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Surah',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(color: Colors.purple, thickness: 2),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                _buildDoaCard(
                    context,
                    'Niat Ihram',
                    'Dibaca saat berangkat dari Miqot menuju Mekah',
                    DoaNiatIhramScreen()),
                _buildDoaCard(
                    context,
                    'Talbiyah',
                    'Dibaca sepanjang perjalanan dari Miqot menuju Masjidil Haram',
                    DoaTalbiyahScreen()),
                _buildDoaCard(
                    context,
                    'Do’a Masuk Masjidil Haram',
                    'Dibaca saat memasuki Masjidil Haram',
                    DoaMasukMasjidilHaramScreen()),
                _buildDoaCard(context, 'Do’a Saat Melihat Ka’bah',
                    'Dibaca saat melihat Ka\'bah', DoaMelihatKaabahScreen()),
                _buildDoaCard(
                    context,
                    'Dzikir Saat Menghadapkan Wajah ke Hajar Aswad',
                    'Dibaca saat menghadapkan wajah ke Hajar Aswad',
                    DoaDzikirSaatMenghadapkanWajahKeHajarAswad()),
                _buildDoaCard(
                    context,
                    'Dzikir Antara Rukun Yamani dan Hajar Aswad',
                    'Dibaca antara Rukun Yamani dan Hajar Aswad',
                    DoaDzikirAntaraRukunYamaniDanHajarAswad()),
                _buildDoaCard(
                    context,
                    'Dzikir Menuju Maqam Ibrahim Setelah Thawaf',
                    'Dibaca saat menuju Maqam Ibrahim',
                    DoaDzikirSaatMenujuMaqamIbrahimSetelahSelesaiThawaf()),
                _buildDoaCard(
                    context,
                    'Do’a Saat Minum Air Zamzam',
                    'Dibaca saat hendak minum air Zamzam',
                    DoaSaatKehendakMinumAirZamZam()),
                _buildDoaCard(
                    context,
                    'Dzikir Menuju Shafa untuk Memulai Sa’i',
                    'Dibaca saat menuju Shafa',
                    DoaDzikirSaatMenujuShafaUntukMengawaliSai()),
                _buildDoaCard(
                    context,
                    'Dzikir di Shafa dan Marwah Saat Sa’i',
                    'Dibaca saat berada di Shafa dan Marwah',
                    DoaDzikirSaatBeradaDishafaDanMarwahKetikaMelaksanakanSai()),
                _buildDoaCard(context, 'Do’a Saat Melakukan Raml',
                    'Dibaca saat melakukan raml', DoaKetikaMelakukanRaml()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoaCard(BuildContext context, String title, String description,
      Widget targetScreen) {
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
        margin: EdgeInsets.symmetric(vertical: 8),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Vector.png',
                width: 40,
                height: 40,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(description, style: TextStyle(fontSize: 16)),
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

class DoaMasukMasjidilHaramScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doa Masuk Masjidil Haram')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Doa Masuk Masjidil Haram',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
             Text(
              'Arab:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'أَعُوْذُ بِاللهِ الْعَظِيْمِ وَبِوَجْهِهِ الْكَرِيْمِ وَسُلْطَانِهِ الْقَدِيْمِ مِنَ الشَّيْطَانِ الرَّجِيْمِ, بِسْمِ اللهِ وَالصَّلَاةُ وَالسَّلَامُ عَلَى رَسُوْلِ اللهِ, اَللَّهُمَّ افْتَحْ لِيْ أَبْوَابَ رَحْمَتِكَ',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 28), // Ukuran lebih besar
              textDirection: TextDirection.rtl, // Teks berarah kanan
            ),
             Text(
              'Latin:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Auudzu billaahi al-aziimi wa biwajhihi al-kariimi wa sulthaanihi al-qadiimi minasy-syaithaani ar-rajiim, bismillaahi was-shalaatu was-salaamu \'ala rasuulillaah, Allahummaftah lii abwaaba rahmatika',
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class DoaMelihatKaabahScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doa Saat Melihat Ka\'bah')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Doa Saat Melihat Ka\'bah',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              'Arab:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'اللَّهُمَّ أَنْتَ السَّلَامُ ...',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 28), // Ukuran lebih besar
              textDirection: TextDirection.rtl, // Teks berarah kanan
            ),
             Text(
              'Latin:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text('Allahumma zid haazal baita ...'),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
