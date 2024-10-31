import 'package:flutter/material.dart';
import 'package:qr_code/prosedur/pages/HandlingTibaDiIndonesiaScreen.dart';
import 'package:qr_code/prosedur/pages/KepulanganJamaahScreen.dart';
import 'package:qr_code/prosedur/pages/PengantaranJamaahKeRaudhahScreen.dart';
import 'package:qr_code/prosedur/pages/PenyambutanJamaahDiBandaraScreen.dart';
import 'package:qr_code/prosedur/pages/PersiapanDanPelaksanaanUmrohScreen.dart';
import 'package:qr_code/prosedur/pages/HandlingKeberangkatanScreen.dart';
import 'package:qr_code/prosedur/pages/HandlingKetibaanScreen.dart';
import 'package:qr_code/prosedur/pages/HandlingJamaahDiBusSampaiHotelScreen.dart';

class ProsedurScreen extends StatefulWidget {
  const ProsedurScreen({Key? key}) : super(key: key);

  @override
  State<ProsedurScreen> createState() => _ProsedurScreenState();
}

class _ProsedurScreenState extends State<ProsedurScreen> {
  List<String> prosedurCategories = [
    'Handling Keberangkatan',
    'Handling Ketibaan',
    'Handling Tiba Di Indonesia',
    'Handling Jamaah Di Bus Sampai Hotel',
    'Kepulangan Jamaah',
    'Pengantaran Jamaah Ke Raudhah',
    'Penyambutan Jamaah Di Bandara',
    'Persiapan Dan Pelaksanaan Umroh',
  ];

  List<bool> isExpandedList = List.filled(8, false);

  void navigateToScreen(String category) {
    Widget screen;
    switch (category) {
      case 'Handling Keberangkatan':
        screen = const Handlingkeberangkatanscreen();
        break;
      case 'Handling Ketibaan':
        screen = const HandlingKetibaanScreen();
        break;
      case 'Handling Tiba Di Indonesia':
        screen = const Handlingtibadiindonesiascreen();
        break;
      case 'Handling Jamaah Di Bus Sampai Hotel':
        screen = const Handlingjamaahdibussampaihotelscreen();
        break;
      case 'Kepulangan Jamaah':
        screen = const Kepulanganjamaahscreen();
        break;
      case 'Pengantaran Jamaah Ke Raudhah':
        screen = const Pengantaranjamaahkeraudhahscreen();
        break;
      case 'Penyambutan Jamaah Di Bandara':
        screen = const Penyambutanjamaahdibandarascreen();
        break;
      case 'Persiapan Dan Pelaksanaan Umroh':
        screen = const Persiapandanpelaksanaanumrohscreen();
        break;
      default:
        screen = const Scaffold(
          body: Center(child: Text('Screen not found')),
        );
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prosedur'),
      ),
      body: ListView.builder(
        itemCount: prosedurCategories.length,
        itemBuilder: (context, index) {
          return ExpansionPanelList(
            expansionCallback: (int panelIndex, bool isExpanded) {
              setState(() {
                isExpandedList[index] = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(
                      prosedurCategories[index],
                      style: const TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      navigateToScreen(prosedurCategories[index]);
                    },
                  );
                },
                body: GestureDetector(
                  onTap: () {
                    navigateToScreen(prosedurCategories[index]);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Klik untuk melihat lebih lanjut tentang ${prosedurCategories[index]}'),
                  ),
                ),
                isExpanded: isExpandedList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
