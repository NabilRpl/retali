import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BandaraTransitTiba extends StatefulWidget {
  @override
  _BandaraTransitTibaState createState() => _BandaraTransitTibaState();
}

class _BandaraTransitTibaState extends State<BandaraTransitTiba> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaPetugasController = TextEditingController();
  final TextEditingController kloterKeberangkatanController = TextEditingController();

  final List<String> taskDescriptions = [
    '1.Pastikan informasi jadwal penerbangan dari Bandara Transit ke Bandara Tujuan tidak ada perubahan.',
    '2.Berikan penjelasan singkat kepada jamaah tentang prosedur transit, durasi, dan lokasi transit.',
    '3.Ingatkan jamaah untuk mengecek barang bawaan dan membawa paspor, tiket, di dalam tas bawaan.',
    '4.Menginfokan kepada Jamaah titik kumpul pada saat di Bandara.',
    '5.Pastikan semua dokumen yang di perlukan (paspor, visa, boarding pass) sudah siap dan lengkap, Bantu jamaah melalui proses Administrasi di Bandara Transit.',
    '6.Informasikan kepada jamaah tentang fasilitas yang tersedia di bandara (Toilet, Mushola, Restoran, Tempat Istirahat).',
    '7.Pastikan jamaah mengatahui waktu dan tempat berkumpul kembali sebelum melanjutkan penerbangan.',
    '8.Pastikan semua barang bawaan Jamaah tetap aman selama transit, Bantu jamaah jika ada masalah dengan barang bawaan atau bagasi',
  ];

  List<int?> selectedOptions = List<int?>.filled(8, null);

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
        title: Text('Ceklis Bandara Transit (Tiba)'),
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
