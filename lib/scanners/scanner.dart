import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'QRscannerOverlay.dart';
import 'found_screen.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  MobileScannerController cameraController = MobileScannerController();

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
    final String code = barcodeCapture.barcodes.first.rawValue ?? "___";

    // Immediately navigate to the FoundScreen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoundScreen(
          value: code,
          screenClose: _screenWasClosed,
          data: '',
        ),
      ),
    );
  }

  void _screenWasClosed() {
    // No need to reset anything here as the scanner can continue
  }
}
