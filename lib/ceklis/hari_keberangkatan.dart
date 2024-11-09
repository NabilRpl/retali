import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HariKeberangkatan extends StatefulWidget {
  @override
  _HariKeberangkatanState createState() => _HariKeberangkatanState();
}

class _HariKeberangkatanState extends State<HariKeberangkatan> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaPetugasController = TextEditingController();
  final TextEditingController kloterKeberangkatanController = TextEditingController();
  final List<String> taskDescriptions = [
    '1.Mengingatkan Jamaah tentang Jadwal Kumpul Keberangkatan',
    '2.Petugas datang 1 jam lebih awal dari Waktu yang telah ditentukan',
    '3.Manajemen Menyerahkan Paspor kepada Tour Leader',
    '4.TL Menyerahkan Paspor kepada Tim Handling yang sudah lengkap lalu di Fotokan',
    '5.Jamaah Mengumpulkan Koper diberikan sarung dan label yang sesuai lalu di scan',
    '6.Pastikan tidak ada barang larangan di dalam Koper',
    '7.Tanyakan kepada Jamaah apakah ada yang membutuhkan Wheelchair',
    '8.Mengarahkan Jamaah untuk menuju tempat Briefing',
    '9.Membagikan Atribut dan Konsumsi Jamaah',
    '10.Seluruh Jamaah Menuju Counter Airline untuk Check-in',
    '11.Tour Leader Mendapatkan dan menyimpan Baggage Tag',
    '12.Foto Bersama untuk Dokumentasi Perjalanan Lalu Berjalan Menuju Imigrasi',
    '13.Tour Leader memastikan seluruh Jamaah telah memasuki Imigrasi',
    '14.Pada Saat selesai melewati Imigrasi kumpul terlebih dahulu untuk memastikan semua jamaah lengkap',
    '15.Setelah Masuk Imigrasi ketahui dimanakah Boarding Gate pesawat yang akan dinaiki',
    '16.Setelah Mengetahui Boarding Gate pastikan Jamaah lengkap lalu berjalan Bersama menuju Boarding Gate',
    '17.Tour Leader Terakhir memasuki Pesawat untuk memastikan seluruh Jamaah telah naik ke Pesawat',
  ];

  // Create a list to store the selected options for each task
  List<int?> selectedOptions = List<int?>.filled(17, null);
  
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
        title: Text('Tugas Persiapan Keberangkatan'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama Petugas',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Kloter Keberangkatan',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: taskDescriptions.length, // Number of tasks
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            taskDescriptions[index], // Display the task description
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
              onPressed: () {
                // Handle report submission
              },
              child: Text('Laporkan'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
