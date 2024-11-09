import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CeklisPersiapanKeberangkatan extends StatefulWidget {
  @override
  _CeklisPersiapanKeberangkatanState createState() =>
      _CeklisPersiapanKeberangkatanState();
}

class _CeklisPersiapanKeberangkatanState
    extends State<CeklisPersiapanKeberangkatan> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaPetugasController = TextEditingController();
  final TextEditingController kloterKeberangkatanController =
      TextEditingController();

  final List<String> taskDescriptions = [
    '1.Membuat Absensi Memastikan seluruh jamaah tergabung di dalam Grup Keberangkatan',
    '2.Memperkenalkan diri dan menyimpan kontak seluruh Jamaah',
    '3.Memberikan Pembekalan ulang teknis keberangkatan',
    '4.Menginfokan kepada Jamaah titik kumpul pada saat di Bandara',
    '5.Menyampaikan aturan Perjalanan',
  ];

  List<int?> selectedOptions = List<int?>.filled(5, null);

  Future<void> submitData() async {
    if (_formKey.currentState!.validate() && !selectedOptions.contains(null)) {
      final url = Uri.parse(
          "http://192.168.1.5:8000/api/get-reports"); // Use your actual Laravel endpoint

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
        title: Text('Tugas Bandara Keberangkatan'),
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
                  return value!.isEmpty
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
