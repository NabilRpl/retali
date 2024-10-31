import 'package:flutter/material.dart';
import 'package:qr_code/intro/intro_slider.dart';
import 'package:qr_code/login/login_page.dart';
import 'package:qr_code/screens/homepage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:qr_code/maps/pages/admin_map_page.dart';
import 'package:qr_code/maps/pages/google_map_page.dart';
import '../splash/splash_screen.dart'; // Import SplashScreenHome

void main() async {
  // Inisialisasi Supabase
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://your-supabase-url.supabase.co',
    anonKey: 'your-anon-key',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retali',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreenHome(),
        '/login': (context) => LoginPage(),
        '/intro': (context) => IntroSlider(),
        '/homepage': (context) => HomePage(),
        // Tambahkan route lain jika diperlukan
      },
    );
  }
}

class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Role"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman user
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GoogleMapPage()),
                );
              },
              child: const Text("User Mode"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman admin
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminMapPage()),
                );
              },
              child: const Text("Admin Mode"),
            ),
          ],
        ),
      ),
    );
  }
}
