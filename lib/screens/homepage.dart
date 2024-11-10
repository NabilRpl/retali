import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:qr_code/main.dart';
import 'package:qr_code/potensi-masalah/masalah_cuaca.dart';
import 'package:qr_code/potensi-masalah/masalah_keamanan.dart';
import 'package:qr_code/potensi-masalah/masalah_komunikasi.dart';
import 'package:qr_code/potensi-masalah/masalah_psikologis.dart';
import 'package:qr_code/potensi-masalah/masalah_teknologi.dart';
import 'package:qr_code/potensi-masalah/masalah_transportasi.dart';
import 'package:qr_code/scanners/found_screen.dart';
import '../ceklis/ceklis_screen.dart';
import '../doa-doa/doa_doa_screen.dart';
import '../bimbingan-ibadah/bimbingan_ibadah_screen.dart';
import '../maps/pages/google_map_page.dart';
import '../naskah/naskah_screen.dart';
import '../potensi-masalah/masalah_administratif.dart';
import '../potensi-masalah/masalah_hotel.dart';
import '../potensi-masalah/masalah_ibadah.dart';
import '../potensi-masalah/masalah_kesehatan.dart';
import '../potensi-masalah/masalah_logistik.dart';
import '../prosedur/prosedur_screen.dart';
import 'package:qr_code/agenda/agenda_page.dart';
import 'package:qr_code/profile/profile_page.dart';
import '../scanners/scanner.dart';
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
    'assets/images/banner_leader.jpg',
    'assets/images/banner_doa.jpg',
    'assets/images/banner_konten.jpg',
    'assets/images/banner_lokasi.jpg',
    'assets/images/banner_prosedur.jpg',
    'assets/images/banner_sejarah.jpg',
    'assets/images/bimbingan_ibadah.jpeg',
  ];

  Future<void> _uploadImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Handle the selected image file
      print("Image selected: ${pickedFile.path}");
      // You can now upload the image or display it in your app
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
            ), // Call ProfilePage without `imageFile` parameter
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
        automaticallyImplyLeading: false, // Hides the back button
        title: Column(
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
      );
    } else {
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, // Hides the back button
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
    return Column(
      children: <Widget>[
        _buildCarouselSlider(),
        Expanded(
          child: _buildMainContent(context),
        ),
      ],
    );
  }

  Widget _buildCarouselSlider() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0), // Adjust the top padding here
      child: CarouselSlider.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index, realIdx) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FittedBox(
              fit: BoxFit.contain, // Ensures the full image is displayed
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
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1.0,
          height: 300, // Adjust height as needed
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
            Expanded(
              child: _buildListView(),
            ),
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
          // Top row of icons
          Wrap(
            spacing: 35,
            runSpacing: 35,
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              _iconWithText(Icons.menu_book, 'Doa-doa', context),
              _iconWithText(Icons.school, 'Bimbingan\nIbadah', context),
              _iconWithText(Icons.description, 'Naskah Briefing', context),
            ],
          ),
          SizedBox(height: 20), // Add some space between rows
          // Bottom row of icons
          Wrap(
            spacing: 35,
            runSpacing: 35,
            alignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              _iconWithText(Icons.event, 'Agenda', context),
              _iconWithText(Icons.rule, 'Prosedur', context),
              _iconWithText(Icons.library_books_rounded, 'Tugas', context),
              _iconWithText(
                  Icons.playlist_add_check_circle_sharp, 'Ceklis', context),
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
      "assets/images/masalah_psikologis.jpg",
      "assets/images/masalah_cuaca.jpg",
      "assets/images/masalah_teknologi.jpg",
      "assets/images/masalah_lainnya.jpg",
    ];

    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: potensiMasalahImages.length,
        itemBuilder: (context, index) {
          final imagePath = potensiMasalahImages[index];

          return Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            width: 440,
            child: InkWell(
              onTap: () {
                Widget destinationPage;
                switch (index) {
                  case 0:
                    destinationPage = MasalahKesehatan();
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
                  case 11:
                    destinationPage = GoogleMapPage();
                    break;
                  default:
                    destinationPage = MasalahKesehatan();
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => destinationPage),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
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
          MaterialPageRoute(
              builder: (context) => FoundScreen(
                    value: '',
                    screenClose: () {},
                    data: '',
                  )),
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
                  MaterialPageRoute(builder: (context) => CameraPage()),
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
                  MaterialPageRoute(builder: (context) => RoleSelectionPage()),
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
    double iconSize = (label == 'Doa-doa' ||
            label == 'Bimbingan\nIbadah' ||
            label == 'Naskah Briefing' ||
            label == 'Prosedur' ||
            label == 'Agenda' ||
            label == 'Tugas' ||
            label == 'Ceklis')
        ? 40
        : 16;

    return GestureDetector(
      onTap: () {
        if (label == 'Doa-doa') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DoaDoaScreen()),
          );
        } else if (label == 'Bimbingan\nIbadah') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BimbinganIbadahScreen()),
          );
        } else if (label == 'Naskah Briefing') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NaskahScreen()),
          );
        } else if (label == 'Prosedur') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProsedurScreen()),
          );
        } else if (label == 'Agenda') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AgendaPage()),
          );
        } else if (label == 'Tugas') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TugasScreen()),
          );
        } else if (label == 'Ceklis') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CeklisScreen()),
          );
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFFE6E0F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              size: iconSize,
              color: const Color.fromARGB(255, 78, 29, 87),
            ), // Modified icon size
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(color: Colors.black, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
