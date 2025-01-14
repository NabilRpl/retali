import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qr_code/services/logout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BandaraKeMadinah extends StatefulWidget {
  @override
  _BandaraKeMadinahState createState() => _BandaraKeMadinahState();
}

class _BandaraKeMadinahState extends State<BandaraKeMadinah> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaPetugasController = TextEditingController();
  final TextEditingController kloterKeberangkatanController =
      TextEditingController();

  final List<String> taskDescriptions = [
    '1.Sesaat setelah Bus Berjalan Muthawwif Memberikan Sambutan kepada Jamaah lalu Muthawwif memperkenalkan diri lalu menjabarkan kegiatan yang selanjutnya akan di lakukan.',
    '2.Tour Leader membagikan Makan dan Minum kepada seluruh Jamaah Retali.',
    '3.Pandu Seluruh jamaah keluar dari pesawat secara tertib dan pastikan semua barang bawaan terambil.',
    '4.Selama Perjalanan jelaskan kepada Jamaah tentang kenampakan alam sekitar.(Contoh: Rumah Imam besar, dan Tempat bersejarah lainnya)',
    '5.Setelah semua tugas selesai Tour Leader dan Muthawwif berbincang dengan Jamaah apabila memungkinkan.',
    '6.Berikan Ceramah perihal Keutamaan Kota Madinah, Raudhah dan Ziarah Makam Rasul.',
    '7.Sebelum tiba di Madinah, Koordinasi dengan Tim untuk kesiapan Cek-in Hotel',
  ];

  List<int?> selectedOptions = List<int?>.filled(7, null);
  List<Map<String, dynamic>> kloterList = [];
  int? selectedKloterId; // Store selected kloter ID

  @override
  void initState() {
    super.initState();
    fetchKloterData(); // Load kloter data on initialization
  }

  Future<void> fetchKloterData() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('Token');
    final url = Uri.parse(
        "http://192.168.0.100:8000/api/kloter"); // Adjust to your endpoint

    try {
      final response = await http.get(url, headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      });

      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        setState(() {
          kloterList = data
              .map((item) => {"id": item['id'], "nama": item['nama']})
              .toList();
        });
      } else if (response.statusCode == 401) {
        await logout(context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Gagal mengambil data kloter")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  Future<void> submitData() async {
    if (_formKey.currentState!.validate() && !selectedOptions.contains(null)) {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('Token');
      final url = Uri.parse(
          "http://192.168.0.100:8000/api/tugas"); // Use your actual Laravel endpoint

      try {
        final response = await http.post(
          url,
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token"
          },
          body: jsonEncode({
            "nama": "Bandara KeMadinah",
            "kloter": selectedKloterId,
            "tugas_type": 6,
            "tasks": selectedOptions.map((e) => e.toString()).join(", "),
            "title": taskDescriptions.map((e) => e.toString()).join(", ")
          }),
        );

        if (response.statusCode == 200) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Data berhasil dikirim")),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Gagal mengirim data")),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error: $e")),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Tolong semua data diisi")),
      );
    }
  }

  final double fontSize = 14.0; // Define fontSize variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bandara ke Madinah'),
        backgroundColor: Colors.purple,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DropdownButtonFormField<int>(
                value: selectedKloterId,
                hint: Text("Pilih Kloter Keberangkatan"),
                onChanged: (value) {
                  setState(() {
                    selectedKloterId = value;
                  });
                },
                items: kloterList.map<DropdownMenuItem<int>>((kloter) {
                  return DropdownMenuItem<int>(
                    value: kloter["id"],
                    child: Text(kloter["nama"]),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Kloter Keberangkatan',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  return value == null
                      ? 'Kloter Keberangkatan is required'
                      : null;
                },
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: taskDescriptions.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              taskDescriptions[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: selectedOptions[index],
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedOptions[index] = value;
                                    });
                                  },
                                  materialTapTargetSize: MaterialTapTargetSize
                                      .shrinkWrap, // Memperkecil area klik
                                ),
                                Text(
                                  'Sudah',
                                  style: TextStyle(
                                    fontSize:
                                        fontSize * 0.9, // Sesuaikan ukuran teks
                                  ),
                                ),
                                Radio(
                                  value: 1,
                                  groupValue: selectedOptions[index],
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedOptions[index] = value;
                                    });
                                  },
                                  materialTapTargetSize: MaterialTapTargetSize
                                      .shrinkWrap, // Memperkecil area klik
                                ),
                                Text(
                                  'Tidak Terpenuhi',
                                  style: TextStyle(
                                    fontSize:
                                        fontSize * 0.9, // Sesuaikan ukuran teks
                                  ),
                                ),
                                Radio(
                                  value: 2,
                                  groupValue: selectedOptions[index],
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedOptions[index] = value;
                                    });
                                  },
                                  materialTapTargetSize: MaterialTapTargetSize
                                      .shrinkWrap, // Memperkecil area klik
                                ),
                                Flexible(
                                  child: Text(
                                    'Dikerjakan oleh Rekan',
                                    style: TextStyle(
                                      fontSize: fontSize *
                                          0.9, // Sesuaikan ukuran teks
                                    ),
                                    overflow: TextOverflow
                                        .ellipsis, // Menghindari teks terlalu panjang
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: submitData,
                child: Text(
                  'Laporkan',
                  style: TextStyle(
                      color: Colors.white), // Change the text color here
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      Colors.purple, // Text color when the button is pressed
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
