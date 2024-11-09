import 'package:flutter/material.dart';
import '../../intro/intro_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/intro': (context) => IntroSlider(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final String correctId = 'nabil';
  final String correctPassword = '123';
  bool _isError = false;
  bool _isSaveLoginChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Action for back button
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Masukkan ID dan kata sandi Anda untuk melanjutkan.',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 24),
            TextField(
              controller: _idController,
              decoration: InputDecoration(
                labelText: 'ID',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.purple),
                ),
                errorText: _isError ? 'ID atau Kata Sandi salah' : null,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Kata Sandi',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.purple),
                ),
                errorText: _isError ? 'ID atau Kata Sandi salah' : null,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: _isSaveLoginChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isSaveLoginChecked = value!;
                    });
                  },
                ),
                Text('Simpan aktivitas login'),
              ],
            ),
            Spacer(),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (_idController.text == correctId &&
                          _passwordController.text == correctPassword) {
                        _isError = false;
                        Navigator.pushReplacementNamed(context, '/intro');
                      } else {
                        _isError = true;
                      }
                    });
                  },
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
