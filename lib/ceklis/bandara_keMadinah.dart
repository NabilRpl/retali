import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BandaraKeMadinah extends StatefulWidget {
  @override
  _BandaraKeMadinahState createState() => _BandaraKeMadinahState();
}

class _BandaraKeMadinahState extends State<BandaraKeMadinah> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaPetugasController = TextEditingController();
  final TextEditingController kloterKeberangkatanController = TextEditingController();

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

  Future<void> submitData() async {
    if (_formKey.currentState!.validate() && !selectedOptions.contains(null)) {
      final url = Uri.parse(
          "http://127.0.0.1:8000/api/get-reports"); // Use your actual Laravel endpoint

      try {
        final response = await http.post(
          url,
          headers: {
            "Content-Type": "application/json",
          },
          body: jsonEncode({
            "namaPetugas": namaPetugasController.text,
            "kloterKeberangkatan": kloterKeberangkatanController.text,
            "tasks": selectedOptions.map((e) => e.toString()).join(", "),
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
              TextFormField(
                controller: namaPetugasController,
                decoration: InputDecoration(
                  labelText: 'Nama Petugas',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  return value!.isEmpty ? 'Nama Petugas is required' : null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: kloterKeberangkatanController,
                decoration: InputDecoration(
                  labelText: 'Kloter Keberangkatan',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  return value!.isEmpty ? 'Kloter Keberangkatan is required' : null;
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
                                ),
                                Text('Sudah'),
                                Radio(
                                  value: 1,
                                  groupValue: selectedOptions[index],
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedOptions[index] = value;
                                    });
                                  },
                                ),
                                Text('Tidak Terpenuhi'),
                                Radio(
                                  value: 2,
                                  groupValue: selectedOptions[index],
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedOptions[index] = value;
                                    });
                                  },
                                ),
                                Text('Dikerjakan oleh Rekan'),
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
                child: Text('Laporkan'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
