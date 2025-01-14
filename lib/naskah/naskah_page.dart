import 'package:flutter/material.dart';

class BuktiPemanah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Naskah Pemanah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Hari ini kita berada di depan salah satu titik penting dari Perang Uhud, yaitu Bukit Pemanah, yang memiliki peranan strategis dalam sejarah Islam. Di sinilah Rasulullah ﷺ menempatkan para pemanah yang dipimpin oleh Abdullah bin Jubair رضي الله عنه, dengan pesan agar mereka tidak meninggalkan posisi, apapun yang terjadi."),
          _buildBulletPoint("Bukit ini mungkin tampak sederhana sekarang, tetapi dulunya, bukit ini menjadi benteng pertahanan umat Islam. Namun, sebagian pemanah turun sebelum perang usai, melihat peluang untuk mengambil harta rampasan. Akibatnya, pasukan Quraisy yang dipimpin Khalid bin Walid رضي الله عنه berhasil menyerang balik, mengakibatkan umat Islam terluka parah dan mengalami kekalahan."),
          _buildBulletPoint("Peristiwa di Bukit Pemanah ini menjadi pelajaran besar bagi kita semua akan pentingnya mematuhi perintah Allah dan Rasul-Nya. Allah berfirman, “Taatilah Allah dan Rasul-Nya jika kamu benar-benar beriman.” (QS. Al-Anfal: 1). Mari kita ingat selalu untuk menaati perintah Allah tanpa ragu dan tidak tergoda oleh kenikmatan dunia yang hanya sementara."),
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

class GunungUhud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Gunung Uhud")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita berada di salah satu tempat bersejarah yang sangat berarti bagi umat Islam, yaitu Gunung Uhud. Rasulullah ﷺ bersabda, “Gunung ini mencintai kita, dan kita pun mencintainya.” (HR. Bukhari). Gunung ini menjadi saksi dari Perang Uhud, yang menjadi ujian berat bagi umat Islam saat itu."),
          _buildBulletPoint("Saat ini, Gunung Uhud berdiri megah di depan kita dengan keindahan alamnya yang tak berubah. Ketika kita berdiri di sini, mari kita bayangkan suasana perang di mana para sahabat mempertaruhkan nyawa mereka demi Islam. Di sinilah Hamzah bin Abdul Muthalib رضي الله عنه, paman Nabi ﷺ, gugur sebagai syahid."),
          _buildBulletPoint("Meskipun umat Islam sempat hampir meraih kemenangan, kekalahan terjadi ketika beberapa pemanah meninggalkan pos mereka demi mengejar harta rampasan. Rasulullah ﷺ terluka, bahkan beberapa sahabat mengira beliau telah wafat. Di sini kita belajar bahwa ketaatan kepada Allah dan Rasul-Nya adalah kunci keberhasilan."),
          _buildBulletPoint("Tempat ini mengajarkan kita pentingnya disiplin, kesabaran, dan keikhlasan dalam menjalankan perintah Allah. Semoga kita semua bisa mengambil pelajaran berharga dari peristiwa ini dan menjadi hamba yang selalu taat kepada-Nya."),
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

class MakamSyuhadaUhud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Makam Syuhada Uhud")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Saat ini kita berada di Makam Syuhada Uhud, tempat di mana para pahlawan Islam yang gugur dalam Perang Uhud dimakamkan. Di antara mereka terdapat paman Rasulullah ﷺ, Hamzah bin Abdul Muthalib رضي الله عنه, yang dikenal sebagai \"Singa Allah.\" Para syuhada yang dimakamkan di sini telah memberikan nyawa mereka demi menegakkan agama Allah."),
          _buildBulletPoint("Ketika kita berada di tempat ini, kita diingatkan pada firman Allah, “Janganlah kamu mengira bahwa orang-orang yang gugur di jalan Allah itu mati; bahkan mereka hidup di sisi Tuhannya dengan mendapat rezeki.” (QS. Ali Imran: 169)."),
          _buildBulletPoint("Mari kita berdoa untuk para syuhada agar Allah menempatkan mereka di surga-Nya yang tertinggi. Di tempat ini, kita juga diingatkan untuk memperbarui niat dan siap untuk berkorban demi agama, apapun yang terjadi."),
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

class MasjidAbuBakarAshShidiq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Abu Bakar Ash Shiddiq")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Sekarang kita berada di depan Masjid Abu Bakar Ash-Shiddiq رضي الله عنه, sahabat Nabi yang paling setia dan orang pertama yang beriman kepada beliau. Masjid ini berada di dekat Masjid Nabawi, dan tetap berdiri sebagai simbol ketulusan Abu Bakar dalam membela Islam."),
          _buildBulletPoint("Abu Bakar رضي الله عنه tidak hanya membenarkan Nabi ﷺ dalam peristiwa Isra' Mi'raj tanpa ragu, tetapi juga rela berkorban dengan seluruh hartanya di jalan Allah. Beliau menjadi khalifah pertama setelah wafatnya Rasulullah ﷺ dan berhasil menjaga keutuhan umat meskipun banyak ujian yang dihadapi."),
          _buildBulletPoint("Bangunan masjid ini yang sederhana seakan mencerminkan kepribadian Abu Bakar رضي الله عنه yang rendah hati dan penuh cinta kepada Islam. Di tempat ini, mari kita ingat kesetiaan dan kecintaan Abu Bakar رضي الله عنه kepada Nabi ﷺ, dan mari kita memohon agar kita juga diberi keimanan yang kuat."),
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

class MasjidAlGhamamah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Al Ghamamah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Saat ini kita berada di depan Masjid Al Ghamamah, masjid bersejarah yang juga dikenal dengan nama Masjid Awan. Masjid ini dibangun di tempat Nabi ﷺ melaksanakan shalat istisqa, shalat meminta hujan, ketika penduduk Madinah mengalami kekeringan."),
          _buildBulletPoint("Saat Nabi ﷺ mengangkat tangan beliau untuk berdoa, awan tiba-tiba muncul di atas beliau dan tak lama kemudian hujan pun turun, menghidupkan kembali bumi yang gersang. Nama “Al Ghamamah” berarti “awan,” sebagai pengingat akan mukjizat doa Rasulullah ﷺ yang dikabulkan oleh Allah."),
          _buildBulletPoint("Masjid ini berdiri dengan arsitektur khas, berbentuk persegi dengan kubah indah yang menandai kekuatan doa dan rahmat Allah. Saat kita berada di sini, mari kita panjatkan doa-doa kita kepada Allah, memohon keberkahan, kelancaran, serta keselamatan dalam perjalanan ini."),
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

class MasjidAliBinAbiThalib extends StatelessWidget {
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

class MasjidNabawi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Nabawi")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita sekarang berada di Masjid Nabawi, masjid yang dibangun oleh Rasulullah ﷺ sendiri, yang juga menjadi tempat peristirahatan terakhir beliau bersama sahabat-sahabat tercinta, Abu Bakar dan Umar رضي الله عنهما. Inilah masjid yang memiliki keutamaan besar, di mana satu kali shalat di sini sama dengan seribu kali shalat di masjid lain, kecuali Masjidil Haram. (HR. Bukhari dan Muslim)."),
          _buildBulletPoint("Masjid Nabawi kini telah mengalami banyak perluasan yang megah, dengan payung-payung besar yang meneduhkan jamaah dan kubah hijau yang menjadi lambang keindahan kota Madinah. Arsitektur modern ini tak mengurangi nuansa ketenangan dan kekhusyukan, menjadikan setiap ibadah yang kita lakukan di sini penuh makna."),
          _buildBulletPoint("Di dalam Masjid Nabawi, kita dapat mendekat ke Raudhah, serta mengirimkan salam kita kepada Rasulullah ﷺ di makam beliau. Masjid ini bukan hanya sekadar tempat shalat, tetapi juga saksi bagi perjuangan dakwah Nabi ﷺ, tempat berkumpulnya para sahabat, dan pusat perkembangan peradaban Islam pertama."),
          _buildBulletPoint("Saat kita berada di Masjid Nabawi ini, mari kita resapi momen ini, panjatkan doa terbaik, dan kirimkan shalawat yang tulus kepada Rasulullah ﷺ. Semoga perjalanan kita ke Masjid Nabawi menjadi perjalanan yang diberkahi, menguatkan iman, dan menambah cinta kita kepada Rasulullah ﷺ dan Islam."),
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

class MasjidQuba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Quba")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita sekarang berada di tempat yang sangat mulia, Masjid Quba, masjid pertama yang dibangun dalam Islam. Bisa bayangkan? Inilah tempat yang dibangun oleh Nabi Muhammad ﷺ bersama para sahabatnya yang mulia, dan masjid ini dibangun atas dasar takwa kepada Allah sejak awal. Begitu besar kedudukannya dalam Islam!"),
          _buildBulletPoint("Ketika Nabi ﷺ tiba di Madinah setelah hijrah dari Mekkah, beliau tinggal beberapa hari di Quba. Salah satu tindakan pertama beliau adalah membangun masjid ini bersama para sahabatnya dari kaum Muhajirin dan Anshar. Masjid Quba terletak di perkampungan Bani 'Amr bin 'Auf, dan hingga sekarang, masjid ini tetap berdiri megah. Ini bukan hanya sebuah bangunan, Sobat Retali, tetapi juga simbol iman, ketakwaan, dan kecintaan kepada Allah dan Rasul-Nya."),
          _buildBulletPoint("Yang menarik, Nabi ﷺ biasa mengunjungi masjid ini setiap hari Sabtu. Beliau datang baik dengan berjalan kaki maupun berkendara, dan melaksanakan salat di sini. Beliau ﷺ menyampaikan kepada kita dalam sebuah hadis, “Barang siapa bersuci di rumahnya, kemudian datang ke Masjid Quba dan melaksanakan salat di dalamnya, baginya pahala seperti pahala umrah.” Bayangkan, Sobat Retali, kita semua yang hadir di sini bisa meraih pahala umrah dengan melaksanakan salat di masjid ini. Maka, jangan lewatkan kesempatan emas ini, insya Allah."),
          _buildBulletPoint("Sobat Retali, Masjid Quba juga mendapatkan perhatian besar sepanjang sejarah. Diperbarui oleh Khalifah Utsman bin Affan رضي الله عنه, dan kemudian ditingkatkan lagi oleh Umar bin Abdul Aziz ketika beliau menjadi gubernur Madinah. Hingga kini, di era Kerajaan Saudi, masjid ini terus diperluas. Kita bisa melihat bagaimana desain aslinya tetap dipertahankan, tetapi dengan tambahan empat menara megah dan beberapa kubah besar. Saat ini, di bawah Proyek Raja Salman, masjid ini diperluas lebih jauh dan bisa menampung hingga 66 ribu jamaah."),
          _buildBulletPoint("Sekarang, perhatikan Sobat Retali, lihat sekeliling. Banyak sekali jamaah dari seluruh dunia yang datang ke sini, mengingat betapa besar keutamaan dan berkah yang ada di masjid ini. Ini adalah tempat yang selalu terbuka untuk kita semua, tanpa batasan waktu. Setiap saat, kita bisa datang untuk mendekatkan diri kepada Allah di sini."),
          _buildBulletPoint("Masjid ini bukan hanya sebuah bangunan, tetapi juga saksi bisu dari hijrah Nabi Muhammad ﷺ, simbol perjuangan, ketakwaan, dan kecintaan kepada Islam. Semoga kita semua mendapatkan keberkahan dari tempat yang mulia ini dan bisa membawa pulang kenangan spiritual yang tak terlupakan."),
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

class PengenalanLingkunganMasjid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pengenalan Lingkungan Masjid")),
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

class RaudhahAsySyarifah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Raudhah Asy Syarifah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita saat ini berada di salah satu tempat yang paling mulia dan istimewa di dunia, yaitu Raudhah Asy Syarifah. Rasulullah ﷺ bersabda, “Antara rumahku dan mimbarku adalah taman (Raudhah) dari taman-taman surga.” (HR. Bukhari dan Muslim). Setiap langkah kita di sini adalah langkah yang diiringi berkah dan rahmat Allah, sebuah kesempatan yang tidak semua orang dapatkan."),
          _buildBulletPoint("Raudhah sekarang ditandai dengan karpet berwarna hijau, berbeda dari karpet merah di sekitarnya. Tempat ini sering kali penuh dengan jamaah dari berbagai penjuru dunia yang datang untuk berdoa, memohon ampun, dan memanjatkan hajat mereka di tempat yang dijanjikan Rasulullah ﷺ sebagai taman surga."),
          _buildBulletPoint("Di Raudhah ini, kita merasakan kedekatan yang mendalam dengan Rasulullah ﷺ. Di tempat inilah beliau menyampaikan risalah Islam, memberi nasihat kepada para sahabat, dan menunaikan shalat dengan penuh ketundukan. Mari manfaatkan momen ini untuk memanjatkan doa yang tulus, memohon apa yang kita butuhkan kepada Allah, serta menyampaikan salam dan cinta kita kepada Nabi ﷺ."),
          _buildBulletPoint("Semoga setiap doa yang kita panjatkan di Raudhah ini diijabah oleh Allah. Ingatlah, jamaah sekalian, bahwa kesempatan berada di Raudhah ini sangatlah langka dan berharga, maka mari kita manfaatkan dengan sebaik-baiknya."),
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

class SaqifahBaniSaidah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Saqifah Bani Saidah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Kita berada di Saqifah Bani Saidah, tempat bersejarah di mana para sahabat berkumpul untuk bermusyawarah setelah wafatnya Nabi ﷺ. Di sinilah Abu Bakar Ash-Shiddiq رضي الله عنه akhirnya terpilih sebagai khalifah pertama umat Islam."),
          _buildBulletPoint("Tempat ini memiliki nilai sejarah penting, mengajarkan kita bahwa Islam menganjurkan musyawarah dalam menyelesaikan masalah. Allah berfirman, “Dan bermusyawarahlah dalam urusan itu.” (QS. Ali Imran: 159). Di sini, kita belajar betapa pentingnya persatuan dan saling mendengarkan."),
          _buildBulletPoint("Semoga kita dapat menerapkan pelajaran dari Saqifah Bani Saidah ini dalam kehidupan sehari-hari, dan senantiasa menjunjung tinggi nilai persatuan dan kebijaksanaan."),
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

class Arafah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Arafah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, segala puji hanya bagi Allah Azza wa Jalla yang telah memberi kita kesempatan luar biasa untuk hadir di tempat mulia ini. Shalawat serta salam kita sampaikan kepada Nabi Muhammad ﷺ, teladan kita dalam setiap amal dan kebaikan."),
          _buildBulletPoint("Jamaah Retali, kita berada di Padang Arafah, lokasi yang sangat istimewa dalam ibadah haji. Nabi Muhammad ﷺ bersabda, \"Haji itu adalah Arafah\" (HR. Tirmidzi). Tanpa wukuf di Arafah, maka ibadah haji seseorang tidak akan sempurna. Arafah merupakan simbol dari pengakuan dan permohonan ampunan kita kepada Allah, yang dengan kasih sayang-Nya akan menerima doa dan permintaan kita di tempat ini."),
          _buildBulletPoint("Arafah saat ini dilengkapi dengan tenda-tenda besar untuk menaungi jamaah yang hadir dari seluruh dunia. Di Arafah ini pula, Nabi Muhammad ﷺ berkhutbah pada Haji Wada’, menyampaikan pesan-pesan penting tentang hak, persaudaraan, dan kasih sayang. Tempat ini mengajarkan kepada kita tentang ketundukan dan taubat yang tulus kepada Allah."),
          _buildBulletPoint("Mari kita manfaatkan waktu yang sangat berharga ini untuk berdoa dan memohon kepada Allah. Semoga kita semua diterima sebagai hamba yang bertobat dan diampuni dosa-dosa kita."),
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

class ClockTower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Clock Tower (Makkah Royal Clock Tower)")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Di dekat Masjidil Haram, kita dapat melihat salah satu menara jam tertinggi di dunia, yaitu Makkah Royal Clock Tower. Bangunan ini menjadi ikon modern yang membantu jamaah mengetahui waktu shalat dengan tepat. Tingginya menjulang di atas Masjidil Haram, membuatnya mudah terlihat dari berbagai sudut kota Mekkah."),
          _buildBulletPoint("Di lantai-lantai atas Clock Tower terdapat museum Islam dan astronomi yang memberikan informasi tentang sejarah Islam, peradaban Muslim, dan keajaiban alam semesta. Menara ini juga mencerminkan semangat Islam dalam menghargai ilmu pengetahuan dan perkembangan teknologi. Semoga kita bisa mengambil hikmah dari keindahan arsitektur ini, sebagai pengingat akan pentingnya waktu dan kesungguhan dalam beribadah."),
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

class GuaHira extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Gua Hira di Jabal Nur")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita kini berada di Jabal Nur, tempat yang penuh sejarah bagi umat Islam. Di puncak gunung ini terdapat Gua Hira, di mana Nabi Muhammad ﷺ menerima wahyu pertama dari Allah melalui Malaikat Jibril."),
          _buildBulletPoint("Peristiwa wahyu pertama ini dimulai dengan kata “Iqra’” (bacalah), yang menandai dimulainya risalah kenabian. Dari sini, kita belajar tentang pentingnya ilmu dan membaca dalam Islam. Peristiwa ini mengingatkan kita bahwa ilmu merupakan fondasi bagi umat Islam dan harus dicari dengan sungguh-sungguh."),
          _buildBulletPoint("Gua Hira ini adalah tempat kecil, namun sejarahnya sangat besar. Semoga keberadaan kita di sini semakin meningkatkan kecintaan kita pada ilmu dan menambah ketaatan kita kepada Allah."),
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

class JabalNur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Jabal Nur")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita berada di Jabal Nur, sebuah tempat penuh berkah di mana wahyu pertama diturunkan kepada Nabi Muhammad ﷺ. Shalawat serta salam kita sampaikan kepada beliau, yang selalu menjadi cahaya bagi umat ini."),
          _buildBulletPoint("Di puncak Jabal Nur, terdapat Gua Hira, tempat Nabi ﷺ menyendiri untuk beribadah sebelum masa kerasulannya. Di sinilah beliau menerima wahyu pertama dari Allah melalui Malaikat Jibril, 'Iqra'' (bacalah). Wahyu ini menandai awal dari dakwah Islam dan pentingnya ilmu bagi umat Islam."),
          _buildBulletPoint("Jabal Nur saat ini sering dikunjungi oleh para jamaah yang ingin menyaksikan langsung tempat mulainya dakwah Islam. Tempat ini mengajarkan kita untuk menghargai ilmu dan selalu dekat kepada Allah."),
          _buildBulletPoint("Semoga Allah menambahkan ilmu dan iman kepada kita semua di tempat yang mulia ini."),
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

class JabalRahmah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Jabal Rahmah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, segala puji kita panjatkan kepada Allah Azza wa Jalla yang telah memberikan kita kesempatan luar biasa ini untuk hadir di tempat penuh sejarah, yaitu Jabal Rahmah. Shalawat dan salam kita sampaikan kepada Nabi Muhammad ﷺ, sosok teladan kita yang mengajarkan cinta, kasih sayang, dan pengorbanan dalam Islam."),
          _buildBulletPoint("Saat ini kita berada di Jabal Rahmah, atau \"Bukit Kasih Sayang,\" yang menurut tradisi Islam menjadi tempat pertemuan kembali Nabi Adam dan Hawa setelah berpisah lama saat diturunkan ke bumi. Tempat ini mengandung pelajaran yang sangat mendalam tentang kasih sayang dan ampunan Allah kepada umat-Nya. Di sinilah mereka berdua memohon ampunan Allah dan diterima taubatnya, sebagai awal dari kehidupan manusia di bumi."),
          _buildBulletPoint("Jabal Rahmah saat ini memiliki sebuah monumen putih di puncaknya sebagai penanda bukit. Dari atas bukit ini, kita dapat melihat hamparan luas Padang Arafah di bawah, yang setiap tahunnya menjadi tempat wukuf bagi para jamaah haji. Meski tidak ada dalil khusus yang mengharuskan kita berdoa di bukit ini, Jabal Rahmah mengingatkan kita pada pentingnya cinta, ampunan, dan keikhlasan."),
          _buildBulletPoint("Mari kita manfaatkan kesempatan ini dengan berdoa kepada Allah, memohon ampunan dan kebaikan bagi diri kita dan keluarga kita. Semoga Allah menjadikan kita sebagai orang-orang yang penuh kasih sayang, selalu menjaga hubungan baik, serta senantiasa diberi keberkahan dalam kehidupan ini."),
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

class JabalTsur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Jabal Tsur")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Segala puji bagi Allah Azza wa Jalla yang telah memberi kita kesempatan mengunjungi Jabal Tsur. Shalawat dan salam kepada Nabi Muhammad ﷺ, yang perjuangannya selalu menginspirasi kita untuk tetap teguh dalam beriman."),
          _buildBulletPoint("Jabal Tsur adalah tempat bersejarah di mana Nabi Muhammad ﷺ dan sahabatnya, Abu Bakar Ash-Shiddiq رضي الله عنه, berlindung selama tiga hari dari pengejaran kaum Quraisy dalam peristiwa hijrah. Di gua kecil ini, meskipun dalam keadaan sulit, Rasulullah ﷺ tetap tawakkal, dan Allah pun mengirimkan laba-laba untuk menutup pintu gua sehingga mereka aman dari pengejaran."),
          _buildBulletPoint("Melihat Jabal Tsur yang menjulang tinggi ini mengingatkan kita pada ketabahan dan tawakkal kepada Allah dalam setiap ujian. Tempat ini mengajarkan kita untuk selalu bergantung pada Allah dalam menghadapi kesulitan."),
          _buildBulletPoint("Semoga kisah hijrah ini memberikan kekuatan kepada kita semua untuk bersabar dan bertawakkal, apapun tantangan yang kita hadapi."),
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

class MasjidAlKhoif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Al-Khoif")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita berada di Jabal Nur, sebuah tempat penuh berkah di mana wahyu pertama diturunkan kepada Nabi Muhammad ﷺ. Shalawat serta salam kita sampaikan kepada beliau, yang selalu menjadi cahaya bagi umat ini."),
          _buildBulletPoint("Di puncak Jabal Nur, terdapat Gua Hira, tempat Nabi ﷺ menyendiri untuk beribadah sebelum masa kerasulannya. Di sinilah beliau menerima wahyu pertama dari Allah melalui Malaikat Jibril, 'Iqra'' (bacalah). Wahyu ini menandai awal dari dakwah Islam dan pentingnya ilmu bagi umat Islam."),
          _buildBulletPoint("Jabal Nur saat ini sering dikunjungi oleh para jamaah yang ingin menyaksikan langsung tempat mulainya dakwah Islam. Tempat ini mengajarkan kita untuk menghargai ilmu dan selalu dekat kepada Allah."),
          _buildBulletPoint("Semoga Allah menambahkan ilmu dan iman kepada kita semua di tempat yang mulia ini."),
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

class MasjidJin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Jin")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Alhamdulillah, kita berada di Masjid Jin, sebuah tempat yang menjadi saksi interaksi Rasulullah ﷺ dengan sekelompok jin yang mendengar beliau membaca Al-Quran. Para jin tersebut terkesan dan memeluk Islam, sehingga Masjid ini dinamakan Masjid."),
          _buildBulletPoint("Masjid Jin mengingatkan kita pada luasnya dakwah Islam yang meliputi semua makhluk. Allah berfirman, “Dan Aku tidak menciptakan jin dan manusia melainkan supaya mereka mengabdi kepada-Ku.” (QS. Adz-Dzariyat: 56). Peristiwa ini juga menunjukkan bagaimana Rasulullah ﷺ diutus untuk seluruh alam, termasuk kaum jin."),
          _buildBulletPoint("Semoga kita diingatkan untuk selalu memperbanyak bacaan Al-Quran dan memohon perlindungan kepada Allah dari segala kejahatan yang kasat mata maupun tidak. Semoga kehadiran kita di sini semakin mempertebal iman kita kepada Allah."),
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

class MasjidTanim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Masjid Tan`im (Miqat Aisyah)")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Kita berada di Masjid Tan’im, yang juga dikenal sebagai Miqat Aisyah. Masjid ini menjadi tempat miqat bagi jamaah yang ingin memulai ihram umrah mereka. Di sinilah Aisyah رضي الله عنها, istri Rasulullah ﷺ, memulai ihram umrahnya atas perintah Rasulullah ﷺ."),
          _buildBulletPoint("Masjid ini mengingatkan kita pada pentingnya kesucian dan niat dalam beribadah. Setiap ibadah harus dimulai dengan niat yang ikhlas. Dari sini, jamaah bisa memulai ihram mereka dengan niat yang suci dan bersiap memasuki rangkaian ibadah umrah."),
          _buildBulletPoint("Mari kita jaga kesucian niat kita dan memohon kepada Allah agar setiap langkah yang kita tempuh dalam ibadah diterima oleh-Nya."),
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

class Mina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Mina")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Segala puji bagi Allah Azza wa Jalla yang telah memudahkan kita untuk berada di Mina, tempat bersejarah dalam pelaksanaan ibadah haji. Shalawat serta salam kepada Nabi Muhammad ﷺ, yang menjadi contoh terbaik dalam segala ibadah kita."),
          _buildBulletPoint("Di Mina ini, kita akan melakukan pelontaran jumrah, yaitu melempar batu sebagai simbol perlawanan terhadap godaan setan. Ritual ini mengingatkan kita untuk senantiasa bertekad menghindari godaan yang menjauhkan kita dari Allah. Melontar jumrah juga menandai kemenangan iman atas hawa nafsu dan ketaatan atas godaan."),
          _buildBulletPoint("Mina hari ini dipenuhi dengan tenda-tenda jamaah yang berusaha menghidupkan semangat pelaksanaan ibadah haji. Di sini, Rasulullah ﷺ pernah tinggal selama hari-hari tasyriq, berdoa dan berdzikir. Semoga kita bisa mengambil pelajaran penting dari tempat ini untuk senantiasa meningkatkan iman dan taqwa kita kepada Allah."),
          _buildBulletPoint("Mari kita isi waktu kita di Mina dengan berdzikir dan berdoa, memohon perlindungan dari Allah dari segala tipu daya setan."),
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

class Muzdalifah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naskah Briefing Muzdalifah")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Assalamu’alaikum warahmatullahi wabarakatuh, Jamaah Retali yang dirahmati Allah."),
          _buildBulletPoint("Segala puji bagi Allah Azza wa Jalla yang telah memberikan kita kesempatan untuk berada di Muzdalifah. Shalawat serta salam kita haturkan kepada Nabi Muhammad ﷺ, suri teladan kita dalam setiap ibadah."),
          _buildBulletPoint("Di Muzdalifah, kita bermalam setelah wukuf di Arafah, sebagaimana yang disunnahkan oleh Rasulullah ﷺ. Tempat ini memberi kita waktu untuk bermuhasabah dan mengumpulkan batu-batu kecil untuk pelontaran jumrah di Mina. Di sini kita diingatkan tentang ketenangan dan keikhlasan dalam menjalankan perintah Allah, sebagai bentuk persiapan mental dan spiritual sebelum melanjutkan ibadah di Mina."),
          _buildBulletPoint("Keheningan Muzdalifah mengajarkan kita untuk menenangkan hati dan berdoa dengan penuh pengharapan kepada Allah. Semoga Allah menerima doa dan amalan kita, serta mempermudah setiap urusan kita dalam ibadah ini."),
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
