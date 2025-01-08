import 'package:flutter/material.dart';
import '../screens/homepage.dart';

class IntroSlider extends StatefulWidget {
  const IntroSlider({Key? key}) : super(key: key);

  @override
  _IntroSliderState createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<Map<String, String>> _slides = [
    {
      'image': 'assets/images/umrah.png',
      'title': 'Selamat datang di Zero Complain',
      'subtitle': 'Aplikasi panduan Tour Leader',
    },
    {
      'image': 'assets/images/travel_umrah.png',
      'title': 'Fitur Terlengkap',
      'subtitle': 'Membantu menyelesaikan tugas Anda dengan mudah',
    },
    {
      'image': 'assets/images/umrah.png',
      'title': 'Jelajahi Kemudahan',
      'subtitle': 'Temukan solusi untuk setiap kebutuhan perjalanan',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                  if (page == _slides.length - 1) {
                    // Pindah ke HomeScreen jika di slide terakhir
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    });
                  }
                },
                itemCount: _slides.length,
                itemBuilder: (context, index) {
                  return _buildPageContent(
                    image: _slides[index]['image']!,
                    title: _slides[index]['title']!,
                    subtitle: _slides[index]['subtitle']!,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      if (_currentPage > 0) {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Color(0xFF673AB7),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  IconButton(
                    onPressed: () {
                      if (_currentPage < _slides.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xFF673AB7),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageContent({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            image,
            height: 300,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    return List.generate(
      _slides.length,
      (index) => _indicator(index == _currentPage),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: isActive ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF673AB7) : const Color(0xFFD1C4E9),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
