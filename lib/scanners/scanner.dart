import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'QRscannerOverlay.dart';
import 'found_screen.dart';
import 'package:audioplayers/audioplayers.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  MobileScannerController cameraController = MobileScannerController();
  bool _screenOpened = false;
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Scanner", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          MobileScanner(
            controller: cameraController,
            onDetect: (barcodeCapture) {
              _foundBarcode(barcodeCapture);
            },
          ),
          QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5)),
        ],
      ),
    );
  }

  void _foundBarcode(BarcodeCapture barcodeCapture) async {
  if (!_screenOpened) {
    final String code = barcodeCapture.barcodes.first.rawValue ?? "_";
    _screenOpened = true;

    // Play beep sound with error handling
    try {
      await _audioPlayer.play(AssetSource('assets/sounds/scan_succes.mp3'));
    } catch (e) {
      print("Error playing sound: $e");
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoundScreen(
          value: code,
          screenClose: _screenWasClosed,
          data: '',
        ),
      ),
    ).then((_) {
      // This is called when the screen is closed
      _screenOpened = false; // Reset so the next scan can be detected
    });
  }
}

  void _screenWasClosed() {
    _screenOpened = false;
  }
}