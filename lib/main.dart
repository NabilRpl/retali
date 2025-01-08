import 'package:flutter/material.dart';
import 'package:qr_code/intro/intro_slider.dart';
import 'package:qr_code/login/login_page.dart';
import 'package:qr_code/screens/homepage.dart';
import '../splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
      },
    );
  }
}