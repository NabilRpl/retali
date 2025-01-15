import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:qr_code/potensi-masalah/potensi_page.dart';
import 'package:qr_code/scanners/datatable_scanner.dart';
import '../ceklis/ceklis_screen.dart';
import '../doa-doa/doa_doa_screen.dart';
import '../bimbingan-ibadah/bimbingan_ibadah_screen.dart';
import '../jamaah/attendance_screen.dart';
import '../location/page/locations_list_page.dart';
import '../naskah/naskah_screen.dart';
import '../prosedur/prosedur_screen.dart';
import 'package:qr_code/profile/profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:qr_code/agenda/agenda_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../tugas/tugas_screen.dart';
import 'camera_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<String> imgList = [
    'assets/images/banner_doa.jpg',
    'assets/images/banner_konten.jpg',
    'assets/images/banner_lokasi.jpg',
    'assets/images/banner_prosedur.jpg',
    'assets/images/banner_naskah.jpg',
    'assets/images/bimbingan_ibadah.jpeg',
  ];

  final List<Widget> pages = [
    DoaDoaScreen(),
    TasksPage(),
    LocationsListPage(),
    ProsedurScreen(),
    NaskahScreen(),
    BimbinganIbadahScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _selectedIndex == 0
          ? _buildHomeContent(context)
          : const ProfilePage(
              imageFile: null,
            ),
      floatingActionButton: _buildFloatingButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  AppBar _buildAppBar() {
    if (_selectedIndex == 0) {
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FutureBuilder<String>(
                  future: SharedPreferences.getInstance()
                      .then((prefs) => prefs.getString('Username') ?? 'User'),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text(
                        'Loading...',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    } else {
                      return Text(
                        'Hei ${snapshot.data}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }
                  },
                ),
                Text(
                  'Welcome to Retali',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.black),
              onPressed: () {
                // Add your onPressed code here!
              },
            ),
          ],
        ),
      );
    } else {
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      );
    }
  }

  Widget _buildHomeContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildCarouselSlider(),
          _buildMainContent(context),
        ],
      ),
    );
  }

  Widget _buildCarouselSlider() {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: CarouselSlider.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index, realIdx) {
          return GestureDetector(
            onTap: () {
              if (index != 0 && index != 5) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              }
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.asset(
                  imgList[index],
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'Image not found',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1.0,
          height: 240,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: true,
        ),
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Container(
        margin: const EdgeInsets.only(top: 0),
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            _buildIconGrid(context),
            _buildListView(),
          ],
        ),
      ),
    );
  }

  Widget _buildIconGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Wrap(
            spacing: 25,
            runSpacing: 25,
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              _iconWithText(FontAwesomeIcons.prayingHands, 'Doa-doa', context),
              _iconWithText(FontAwesomeIcons.calendar, 'Agenda', context),
              _iconWithText(
                  FontAwesomeIcons.kaaba, 'Bimbingan\nIbadah', context),
              _iconWithText(
                  FontAwesomeIcons.fileAlt, 'Naskah\nBriefing', context),
            ],
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 25,
            runSpacing: 25,
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              _iconWithText(FontAwesomeIcons.book, 'Prosedur', context),
              _iconWithText(FontAwesomeIcons.bookOpenReader, 'Tugas', context),
              _iconWithText(FontAwesomeIcons.tasks, 'Ceklis', context),
              _iconWithText(FontAwesomeIcons.userCheck, 'Jamaah', context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildListView() {
    final List<String> potensiMasalahImages = [
      "assets/images/masalah_kesehatan.jpg",
      "assets/images/masalah_logistik.jpg",
      "assets/images/masalah_ibadah.jpg",
      "assets/images/masalah_keamanan.jpg",
      "assets/images/masalah_administratif.jpg",
      "assets/images/masalah_hotel.jpg",
      "assets/images/masalah_transportasi.jpg",
      "assets/images/masalah_komunikasi.jpg",
      "assets/images/masalah_psikologi.jpg",
      "assets/images/masalah_cuaca.jpg",
      "assets/images/masalah_teknologi.jpg",
      "assets/images/masalah_lainnya.jpg",
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: potensiMasalahImages.length,
        itemBuilder: (context, index) {
          final imagePath = potensiMasalahImages[index];

          return Container(
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 9),
            width: MediaQuery.of(context).size.width * 0.36,
            decoration: BoxDecoration(
            ),
            child: InkWell(
              onTap: () {
                Widget destinationPage;
                switch (index) {
                  case 0:
                    destinationPage = PotensiPage();
                    break;
                  case 1:
                    destinationPage = MasalahLogistik();
                    break;
                  case 2:
                    destinationPage = MasalahIbadah();
                    break;
                  case 3:
                    destinationPage = MasalahKeamanan();
                    break;
                  case 4:
                    destinationPage = MasalahAdministratif();
                    break;
                  case 5:
                    destinationPage = MasalahHotel();
                    break;
                  case 6:
                    destinationPage = MasalahTransportasi();
                    break;
                  case 7:
                    destinationPage = MasalahKomunikasi();
                    break;
                  case 8:
                    destinationPage = MasalahPsikologis();
                    break;
                  case 9:
                    destinationPage = MasalahCuaca();
                    break;
                  case 10:
                    destinationPage = MasalahTeknologi();
                    break;
                  default:
                    destinationPage = LocationsListPage();
                    break;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => destinationPage),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFloatingButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ScanAndDisplayPage()),
        );
      },
      child: Icon(Icons.qr_code, color: Colors.white),
      backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      shape: CircleBorder(),
      elevation: 6.0,
    );
  }

  Widget _buildBottomNavBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: const Color.fromARGB(255, 78, 29, 87),
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0
                    ? Colors.white
                    : const Color.fromARGB(255, 0, 0, 0),
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: _selectedIndex == 2
                    ? Colors.white
                    : const Color.fromARGB(255, 0, 0, 0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TasksPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.location_on,
                color: _selectedIndex == 2
                    ? Colors.white
                    : const Color.fromARGB(255, 0, 0, 0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationsListPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: _selectedIndex == 1
                    ? Colors.white
                    : const Color.fromARGB(255, 0, 0, 0),
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconWithText(IconData icon, String label, BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double iconSize = screenWidth * 0.08;
    double padding = screenWidth * 0.04;

    return GestureDetector(
      onTap: () {
        if (label == 'Doa-doa') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DoaDoaScreen()));
        } else if (label == 'Agenda') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AgendaPage()));
        } else if (label == 'Bimbingan\nIbadah') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BimbinganIbadahScreen()));
        } else if (label == 'Naskah\nBriefing') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NaskahScreen()));
        } else if (label == 'Prosedur') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProsedurScreen()));
        } else if (label == 'Tugas') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TugasScreen()));
        } else if (label == 'Ceklis') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CeklisScreen()));
        } else if (label == 'Jamaah') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AttendanceScreen()));
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                  255, 255, 255, 255), // Warna latar belakang container
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color:
                    const Color.fromARGB(255, 109, 109, 109), // Warna bingkai
                width: 1.5, // Ketebalan bingkai
              ),
            ),
            child: Icon(
              icon,
              size: iconSize,
              color: const Color.fromARGB(255, 78, 29, 87),
            ),
          ),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
