import 'package:flutter/material.dart';

class SplashScreenHome extends StatefulWidget {
  @override
  _SplashScreenHomeState createState() => _SplashScreenHomeState();
}

class _SplashScreenHomeState extends State<SplashScreenHome> {
  @override
  void initState() {
    super.initState();
    _initializeApp(); 
  }

  Future<void> _initializeApp() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, '/homepage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}