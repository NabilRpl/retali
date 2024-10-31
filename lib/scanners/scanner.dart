import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code/scanners/QRScannerOverlay.dart';
import 'package:qr_code/scanners/found_screen.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  MobileScannerController cameraController = MobileScannerController();
  bool _screenOpened = false;

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

  void _foundBarcode(BarcodeCapture barcodeCapture) {
    if (!_screenOpened) {
      final String code = barcodeCapture.barcodes.first.rawValue ?? "___";
      _screenOpened = true; // Prevent further scans until screen is closed

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoundScreen(
            value: code,
            screenClose: _screenWasClosed,
          ),
        ),
      );
    }
  }

  void _screenWasClosed() {
    _screenOpened = false; // Reset when screen is closed
  }
}
