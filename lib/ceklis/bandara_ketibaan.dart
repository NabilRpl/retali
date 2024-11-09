import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BandaraKetibaan extends StatefulWidget {
  @override
  _BandaraKetibaanState createState() => _BandaraKetibaanState();
}

class _BandaraKetibaanState extends State<BandaraKetibaan> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaPetugasController = TextEditingController();
  final TextEditingController kloterKeberangkatanController = TextEditingController();

  final List<String> taskDescriptions = [
    '1.Berikan penjelasan singkat kepada jamaah tentang apa yang harus dilakukan setibanya di bandara.',
    '2.Pastikan semua jamaah sudah menyiapkan paspor, visa, dan dokumen penting lainnya.',
    '3.Pandu Seluruh jamaah keluar dari pesawat secara tertib dan pastikan semua barang bawaan terambil.',
    '4.Kumpulkan jamaahh di titik pertemuan yang telah disepakati sebelum masuk ke area imigrasi.',
    '5.Bantu jamaah melalui proses imigrasi dengan memastikan semua dokumen siap dan lengkap.',
    '6.Bantu jamaah dalam mengambil bagasi dan Pastikan semua bagasi tidak ada yang tertinggal.',
    '7.Koordinasi dengan Muthawwif untuk memastikan kendaraan sudah siap menjemput jamaah.',
    '8.Pastikan jamaah bertemu Muthawwif dan semua bagasi dimuat ke dalam kendaraan dengan aman.',
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
        title: Text('Ceklis Ketibaan'),
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
