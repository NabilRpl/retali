import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:qr_code/services/logout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersiapanCheckoutKepulangan extends StatefulWidget {
  @override
  _PersiapanCheckoutKepulanganState createState() =>
      _PersiapanCheckoutKepulanganState();
}

class _PersiapanCheckoutKepulanganState
    extends State<PersiapanCheckoutKepulangan> {
  final _formKey = GlobalKey<FormState>();
  final double fontSize = 14.0; // Base font size
  List<Map<String, dynamic>> kloterList = [];
  int? selectedKloterId; // Store selected kloter ID

  final List<String> taskDescriptions = [
    '1. Ingatkan jamaah untuk mengumpulkan koper dalam keadaan disarungkan di depan kamar jamaah.',
    '2. Pastikan jamaah sudah menyelesaikan semua barang pribadi dan tidak ada yang tertinggal di kamar.',
    '3. Kumpulkan kunci kamar di lobi dan serahkan kepada pihak hotel sesuai prosedur checkout.',
    '4. Hubungi supir bus untuk memastikan kendaraan siap dan hadir tepat waktu untuk perjalanan ke bandara.',
    '5. Saat memasukkan koper ke bagasi bus, pastikan seluruh koper jamaah sudah terdata dan lengkap.',
    '6. Berikan informasi kepada jamaah terkait jadwal keberangkatan penerbangan, terminal, dan gate di bandara.',
    '7. Ingatkan jamaah untuk memeriksa kelengkapan dokumen perjalanan seperti paspor, tiket, dan visa.',
    '8. Pastikan jamaah membawa makanan ringan atau minuman jika diperlukan selama perjalanan.',
    '9. Koordinasikan dengan pihak bandara atau agen terkait untuk mempermudah proses check-in penerbangan.',
    '10. Berikan penjelasan singkat tentang prosedur di bandara, seperti check-in bagasi, imigrasi, dan boarding.',
    '11. Dampingi jamaah hingga proses boarding selesai untuk memastikan semuanya berjalan lancar.',
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
            "nama": "Persiapan Checkout dan Transisi Kepulangan",
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
        title: Text('Persiapan Checkout dan Transisi Kepulangan'),
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
