import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:qr_code/potensi-masalah/potensi_page.dart';
import 'package:qr_code/scanners/datatable_scanner.dart';
import '../ceklis/ceklis_screen.dart';
import '../doa-doa/doa_doa_screen.dart';
import '../bimbingan-ibadah/bimbingan_ibadah_screen.dart';
import '../jamaah/attendance_screen.dart';
import '../maps/pages/google_map_page.dart';
import '../naskah/naskah_screen.dart';
import '../prosedur/prosedur_screen.dart';
import 'package:qr_code/profile/profile_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    GoogleMapPage(),
    ProsedurScreen(),
    NaskahScreen(),
    BimbinganIbadahScreen(),
  ];

  Future<void> _uploadImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      print("Image selected: ${pickedFile.path}");
    } else {
      print("No image selected.");
    }
  }

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
      padding: const EdgeInsets.only(top: 20.0),
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
          height: 300,
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
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3),
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
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Wrap(
            spacing: 35,
            runSpacing: 35,
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              _iconWithText(Icons.book, 'Doa-doa', context),
              _iconWithText(Icons.accessibility_new, 'Bimbingan\nIbadah', context),
              _iconWithText(Icons.assignment, 'Naskah\nBriefing', context),
            ],
          ),
          SizedBox(height: 30),
          Wrap(
            spacing: 35,
            runSpacing: 35,
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              _iconWithText(Icons.article, 'Prosedur', context),
              _iconWithText(Icons.list_alt, 'Tugas', context),
              _iconWithText(Icons.checklist, 'Ceklis', context),
              _iconWithText(Icons.people, 'Jamaah', context), // Add Jamaah icon
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
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: potensiMasalahImages.length,
        itemBuilder: (context, index) {
          final imagePath = potensiMasalahImages[index];

          return Container(
            margin: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
            width: MediaQuery.of(context).size.width * 0.55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
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
                    destinationPage = GoogleMapPage();
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
                  MaterialPageRoute(builder: (context) => GoogleMapPage()),
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
    double iconSize = screenWidth * 0.09;
    double padding = screenWidth * 0.04;

    return GestureDetector(
      onTap: () {
        if (label == 'Doa-doa') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DoaDoaScreen()));
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
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AttendanceScreen()));
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              color: Color(0xFFE6E0F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              size: iconSize,
              color: const Color.fromARGB(255, 78, 29, 87),
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.035,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}