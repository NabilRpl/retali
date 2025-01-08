import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:audioplayers/audioplayers.dart';

class MobileScannerScreen extends StatelessWidget {
  final Function(String) onScan;
  final AudioPlayer _audioPlayer = AudioPlayer();

  MobileScannerScreen({Key? key, required this.onScan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 200.0
        : 330.0;

    bool isScanning = false;

    return Scaffold(
      appBar: AppBar(title: const Text("Scan Barcode")),
      body: Stack(
        children: [
          MobileScanner(
            onDetect: (BarcodeCapture capture) async {
              if (isScanning) return;

              isScanning = true;

              final List<Barcode> barcodes = capture.barcodes;
              if (barcodes.isNotEmpty) {
                final String? scanData = barcodes.first.rawValue;
                if (scanData != null) {
                  // Play beep sound
                  await _audioPlayer.play(AssetSource('assets/sounds/beep.mp3'));

                  onScan(scanData);
                  Navigator.pop(context);
                }
              }
            },
            fit: BoxFit.cover,
          ),
          QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5)),
        ],
      ),
    );
  }
}

class QRScannerOverlay extends StatelessWidget {
  final Color overlayColour;

  const QRScannerOverlay({Key? key, required this.overlayColour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 200.0
        : 330.0;

    return Stack(
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(overlayColour, BlendMode.srcOut),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  backgroundBlendMode: BlendMode.dstOut,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: scanArea,
                  width: scanArea,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: CustomPaint(
            foregroundPainter: BorderPainter(),
            child: SizedBox(
              width: scanArea + 25,
              height: scanArea + 25,
            ),
          ),
        ),
      ],
    );
  }
}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double width = 4.0;
    const double radius = 20.0;

    final Rect rect = Rect.fromLTWH(
      width,
      width,
      size.width - 2 * width,
      size.height - 2 * width,
    );
    final RRect rrect = RRect.fromRectAndRadius(rect, const Radius.circular(radius));

    final Path path = Path()
      ..addRect(Rect.fromLTWH(0, 0, radius, radius))
      ..addRect(Rect.fromLTWH(size.width - radius, 0, radius, radius))
      ..addRect(Rect.fromLTWH(0, size.height - radius, radius, radius))
      ..addRect(Rect.fromLTWH(size.width - radius, size.height - radius, radius, radius));

    canvas.clipPath(path);
    canvas.drawRRect(
      rrect,
      Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..strokeWidth = width,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}