import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:qr_code/main.dart';
import '../doa-doa/doa_doa_screen.dart';
import '../bimbingan-ibadah/bimbingan_ibadah_screen.dart';
import '../maps/pages/google_map_page.dart';
import '../naskah/naskah_screen.dart';
import '../potensi-masalah/masalah_administratif.dart';
import '../potensi-masalah/masalah_cuaca.dart';
import '../potensi-masalah/masalah_hotel.dart';
import '../potensi-masalah/masalah_ibadah.dart';
import '../potensi-masalah/masalah_keamanan.dart';
import '../potensi-masalah/masalah_kesehatan.dart';
import '../potensi-masalah/masalah_komunikasi.dart';
import '../potensi-masalah/masalah_logistik.dart';
import '../potensi-masalah/masalah_psikologis.dart';
import '../potensi-masalah/masalah_teknologi.dart';
import '../potensi-masalah/masalah_transportasi.dart';
import '../prosedur/prosedur_screen.dart';
import 'package:qr_code/agenda/agenda_page.dart';
import 'package:qr_code/profile/profile_page.dart';
import '../scanners/scanner.dart';
import 'package:image_picker/image_picker.dart';

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

  get item => null;

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
      body: _selectedIndex == 0 ? _buildHomeContent(context) : ProfilePage(),
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Hei Ery',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Text('Welcome to Retali',
                style: TextStyle(color: Colors.grey, fontSize: 14)),
          ],
        ),
      );
    } else {
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Profile',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
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
    final List<String> imgList = [
      'assets/images/banner_leader.jpg',
      'assets/images/banner_doa.jpg',
      'assets/images/banner_konten.jpg',
      'assets/images/banner_lokasi.jpg',
      'assets/images/banner_prosedur.jpg',
      'assets/images/banner_sejarah.jpg',
      'assets/images/bimbingan_ibadah.jpeg',
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 20.0), // Adjust the top padding here
      child: CarouselSlider.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index, realIdx) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imgList[index],
              fit: BoxFit.cover,
              width: 1000,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      'Image not found',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1.0, // Full width of the image
          aspectRatio: 16 / 9, // Adjust based on image dimensions
          initialPage: 0,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: true,
          height: 180, // Adjusted height for better fit
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
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
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
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Wrap(
        spacing: 15,
        runSpacing: 15,
        alignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          _iconWithText(Icons.menu_book, 'Doa-doa', context),
          _iconWithText(Icons.school, 'Bimbingan\nIbadah', context),
          _iconWithText(Icons.description, 'Naskah', context),
          _iconWithText(Icons.rule, 'Prosedur', context),
          _iconWithText(Icons.event, 'Agenda', context),
        ],
      ),
    );
  }

  Widget _buildListView() {
    // Daftar potensi masalah dengan gambar dan judul
    final List<Map<String, String>> potensiMasalahList = [
      {
        "title": "Masalah Kesehatan",
        "image": "assets/images/masalah_kesehatan.jpg"
      },
      {
        "title": "Masalah Logistik",
        "image": "assets/images/masalah_logistik.jpg"
      },
      {"title": "Masalah Ibadah", "image": "assets/images/masalah_ibadah.jpg"},
      {
        "title": "Masalah Keamanan",
        "image": "assets/images/masalah_keamanan.jpg"
      },
      {
        "title": "Masalah Administratif",
        "image": "assets/images/masalah_administratif.jpg"
      },
      {"title": "Masalah Hotel", "image": "assets/images/masalah_hotel.jpg"},
      {
        "title": "Masalah Transportasi",
        "image": "assets/images/masalah_transportasi.jpg"
      },
      {
        "title": "Masalah Komunikasi",
        "image": "assets/images/masalah_komunikasi.jpg"
      },
      {
        "title": "Masalah Psikologis",
        "image": "assets/images/masalah_psikologis.jpg"
      },
      {"title": "Masalah Cuaca", "image": "assets/images/masalah_cuaca.jpg"},
      {
        "title": "Masalah Teknologi",
        "image": "assets/images/masalah_teknologi.jpg"
      },
      {
        "title": "Masalah Lainnya",
        "image": "assets/images/masalah_lainnya.jpg"
      },
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: potensiMasalahList.length,
      itemBuilder: (context, index) {
        final item = potensiMasalahList[index];
        final title = item["title"] ?? "Unknown";
        final imagePath = item["image"] ?? "assets/default.png";

        return InkWell(
          onTap: () {
            // Logika navigasi berdasarkan judul item
            if (title == "Masalah Kesehatan") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahKesehatan()),
              );
            } else if (title == "Masalah Logistik") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahLogistik()),
              );
            } else if (title == "Masalah Ibadah") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahIbadah()),
              );
            } else if (title == "Masalah Keamanan") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahKeamanan()),
              );
            } else if (title == "Masalah Administratif") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahAdministratif()),
              );
            } else if (title == "Masalah Hotel") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahHotel()),
              );
            } else if (title == "Masalah Transportasi") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahTransportasi()),
              );
            } else if (title == "Masalah Komunikasi") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahKomunikasi()),
              );
            } else if (title == "Masalah Psikologis") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahPsikologis()),
              );
            } else if (title == "Masalah Cuaca") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahCuaca()),
              );
            } else if (title == "Masalah Teknologi") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MasalahTeknologi()),
              );
            } else if (title == "Masalah Lainnya") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GoogleMapPage()),
              );
            } else {
              // Fallback dialog for unknown items
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Detail Potensi Masalah"),
                    content: Text("Informasi tentang $title"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Tutup"),
                      ),
                    ],
                  );
                },
              );
            }
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.all(8),
            height: 90,
            decoration: BoxDecoration(
              color: Color(0xFFE6E0F8),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                // Displaying the image with a 4:3 aspect ratio
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                // Displaying the title
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildFloatingButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Scanner()),
        );
      },
      child: Icon(Icons.qr_code, color: Colors.white),
      backgroundColor: Colors.purple,
      shape: CircleBorder(),
      elevation: 6.0,
    );
  }

  Widget _buildBottomNavBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: const Color.fromARGB(255, 1, 111, 161),
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
              onPressed: _uploadImage,
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
        } else if (label == 'Naskah') {
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
            child: Icon(icon, size: 24, color: Colors.purple),
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
