import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qr_code/services/logout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KetibaanDihotelMadinah extends StatefulWidget {
  @override
  _KetibaanDihotelMadinahState createState() => _KetibaanDihotelMadinahState();
}

class _KetibaanDihotelMadinahState extends State<KetibaanDihotelMadinah> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaPetugasController = TextEditingController();
  final TextEditingController kloterKeberangkatanController =
      TextEditingController();

  final List<String> taskDescriptions = [
    '1. Tour Leader memastikan hotel telah benar-benar dibooking sebelum jamaah turun dari bus.',
    '2. Muthawwif memastikan kamar sudah tersedia dan mendapatkan konfirmasi pasti dari pihak hotel.',
    '3. Tour Leader menghimbau jamaah di atas bus agar tidak ada barang yang tertinggal.',
    '4. Muthawwif membantu jamaah mengeluarkan koper dari bagasi bus.',
    '5. Cek ketersediaan koper jamaah satu per satu dan centang daftar (1/1).',
    '6. Tour Leader membuat ceklis ketersediaan koper jamaah untuk memastikan semua koper lengkap.',
    '7. Kumpulkan jamaah di lobi setelah seluruh koper jamaah lengkap.',
    '8. Bagikan kunci kamar kepada jamaah sesuai dengan roomlist.',
    '9. Pastikan kamar sesuai dengan komposisi yang tercantum dalam roomlist.',
    '10. Informasikan aturan kamar kepada jamaah dan pastikan aturan ditempel di pintu kamar.',
    '11. Antarkan koper jamaah ke lantai kamar masing-masing.',
    '12. Pantau dan pastikan koper jamaah diletakkan sesuai dengan kamar masing-masing.',
    '13. Setelah koper didistribusikan oleh bellboy, pastikan koper dibawa masuk oleh jamaah.',
    '14. Pastikan seluruh kamar jamaah aman dan tanpa kendala.',
    '15. Jika ketibaan bersamaan dengan waktu makan, ajak jamaah segera menuju restoran.',
    '16. Berikan informasi terkait hotel, termasuk foto hotel dan lokasinya.',
  ];

  List<int?> selectedOptions = List<int?>.filled(16, null);
  List<Map<String, dynamic>> kloterList = [];
  int? selectedKloterId;

  @override
  void initState() {
    super.initState();
    fetchKloterData();
  }

  Future<void> fetchKloterData() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('Token');
    final url = Uri.parse("http://192.168.0.100:8000/api/kloter");

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
      final url = Uri.parse("http://192.168.0.100:8000/api/tugas");

      try {
        final response = await http.post(
          url,
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token"
          },
          body: jsonEncode({
            "nama": "Ketibaan di Hotel dan Check-in (Madinah)",
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

  final double fontSize = 14.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ketibaan di Hotel dan Check-in (Madinah)'),
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
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                Text(
                                  'Sudah',
                                  style: TextStyle(
                                    fontSize: fontSize * 0.9,
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
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                Text(
                                  'Tidak Terpenuhi',
                                  style: TextStyle(
                                    fontSize: fontSize * 0.9,
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
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                Flexible(
                                  child: Text(
                                    'Dikerjakan oleh Rekan',
                                    style: TextStyle(
                                      fontSize: fontSize * 0.9,
                                    ),
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
                child: Text(
                  'Laporkan',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
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
