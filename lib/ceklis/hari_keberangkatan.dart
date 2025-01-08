import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:qr_code/services/logout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HariKeberangkatan extends StatefulWidget {
  @override
  _HariKeberangkatanState createState() => _HariKeberangkatanState();
}

class _HariKeberangkatanState extends State<HariKeberangkatan> {
  final _formKey = GlobalKey<FormState>();
  final double fontSize = 14.0; // Base font size
  List<Map<String, dynamic>> kloterList = [];
  int? selectedKloterId; // Store selected kloter ID

  final List<String> taskDescriptions = [
    '1. Mengingatkan Jamaah tentang Jadwal Kumpul Keberangkatan',
    '2. Petugas datang 1 jam lebih awal dari Waktu yang telah ditentukan',
    '3. Manajemen Menyerahkan Paspor kepada Tour Leader',
    '4. TL Menyerahkan Paspor kepada Tim Handling yang sudah lengkap lalu di Fotokan',
    '5. Jamaah Mengumpulkan Koper diberikan sarung dan label yang sesuai lalu di scan',
    '6. Pastikan tidak ada barang larangan di dalam Koper',
    '7. Tanyakan kepada Jamaah apakah ada yang membutuhkan Wheelchair',
    '8. Mengarahkan Jamaah untuk menuju tempat Briefing',
    '9. Membagikan Atribut dan Konsumsi Jamaah',
    '10. Seluruh Jamaah Menuju Counter Airline untuk Check-in',
    '11. Tour Leader Mendapatkan dan menyimpan Baggage Tag',
    '12. Foto Bersama untuk Dokumentasi Perjalanan Lalu Berjalan Menuju Imigrasi',
    '13. Tour Leader memastikan seluruh Jamaah telah memasuki Imigrasi',
    '14. Pada Saat selesai melewati Imigrasi kumpul terlebih dahulu untuk memastikan semua jamaah lengkap',
    '15. Setelah Masuk Imigrasi ketahui dimanakah Boarding Gate pesawat yang akan dinaiki',
    '16. Setelah Mengetahui Boarding Gate pastikan Jamaah lengkap lalu berjalan Bersama menuju Boarding Gate',
    '17. Tour Leader Terakhir memasuki Pesawat untuk memastikan seluruh Jamaah telah naik ke Pesawat',
  ];

  List<int?> selectedOptions = List<int?>.filled(17, null); // Track selections

  @override
  void initState() {
    super.initState();
    fetchKloterData(); // Load kloter data on initialization
  }

  Future<void> fetchKloterData() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('Token');
    final url = Uri.parse("http://192.168.1.56:8000/api/kloter");

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
      final url = Uri.parse("http://192.168.1.56:8000/api/tugas");
      try {
        final response = await http.post(
          url,
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token"
          },
          body: jsonEncode({
            "nama": "Persiapan Keberangkatan",
            "kloter": selectedKloterId,
            "tugas_type": 2,
            "tasks": selectedOptions.map((e) => e.toString()).join(", "),
            "title": taskDescriptions.join(", "),
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
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontSize,
                              ),
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
                                Text('Sudah',
                                    style: TextStyle(fontSize: fontSize * 0.9)),
                                Radio(
                                  value: 1,
                                  groupValue: selectedOptions[index],
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedOptions[index] = value;
                                    });
                                  },
                                ),
                                Text('Tidak Terpenuhi',
                                    style: TextStyle(fontSize: fontSize * 0.9)),
                                Radio(
                                  value: 2,
                                  groupValue: selectedOptions[index],
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedOptions[index] = value;
                                    });
                                  },
                                ),
                                Flexible(
                                  child: Text(
                                    'Dikerjakan oleh Rekan',
                                    style: TextStyle(fontSize: fontSize * 0.9),
                                    overflow: TextOverflow.ellipsis,
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
                child: Text('Laporkan', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
