import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'database_helper.dart';
import 'mobile_scanner_screen.dart';
import 'scan_result.dart';
class FoundScreen extends StatefulWidget {
  final String value;
  final Function() screenClose;

  const FoundScreen({
    Key? key,
    required this.value,
    required this.screenClose,
    required String data,
  }) : super(key: key);

  @override
  State<FoundScreen> createState() => _FoundScreenState();
}

class _FoundScreenState extends State<FoundScreen> {
  List<List<String>> scanResults = [];
  final DatabaseHelper dbHelper = DatabaseHelper();
  final SupabaseClient supabase = Supabase.instance.client;

  @override
  void initState() {
    super.initState();
    _loadScanResults();
    _addScanResult(widget.value); // Tambahkan hasil scan yang baru
  }

  void _loadScanResults() async {
    List<ScanResult> savedResults = await dbHelper.getScanResults();
    setState(() {
      scanResults = savedResults
          .map((result) => [
                result.timestamp,
                result.nomorKoper,
                result.namaJamaah,
                result.nomorHP,
                result.kloter
              ])
          .toList();

      // Mengurutkan hasil scan berdasarkan nomor koper
      scanResults.sort((a, b) => int.parse(a[1]).compareTo(int.parse(b[1])));
    });
  }

  void _addScanResult(String scanData) {
    List<String> dataFields = scanData.split(';');
    String timeStep = DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now());

    if (dataFields.length >= 4) {
      setState(() {
        scanResults.add([
          timeStep,
          dataFields[0],
          dataFields[1],
          dataFields[2],
          dataFields[3]
        ]);

        // Mengurutkan daftar berdasarkan nomor koper setelah data baru ditambahkan
        scanResults.sort((a, b) => int.parse(a[1]).compareTo(int.parse(b[1])));
      });

      _saveScanResult(timeStep, dataFields);
      _saveScanResultToSupabase(timeStep, dataFields);
    } else {
      print("Data yang di-scan tidak valid.");
    }
  }

  Future<void> _saveScanResult(String timestamp, List<String> dataFields) async {
    ScanResult result = ScanResult(
      timestamp: timestamp,
      nomorKoper: dataFields[0],
      namaJamaah: dataFields[1],
      nomorHP: dataFields[2],
      kloter: dataFields[3],
    );
    await dbHelper.insertScanResult(result);
  }

  Future<void> _saveScanResultToSupabase(String timestamp, List<String> dataFields) async {
    final response = await supabase.from('barcode').insert({
      'timestamp': timestamp,
      'nomor_koper': dataFields[0],
      'nama_jamaah': dataFields[1],
      'nomor_hp': dataFields[2],
      'kloter': dataFields[3],
    });

    if (response.error != null) {
      print("Error saat menyimpan ke Supabase: ${response.error!.message}");
    } else {
      print("Data berhasil disimpan ke Supabase");
    }
  }

  void _onScanButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MobileScannerScreen(
          onScan: (String scanData) {
            _addScanResult(scanData); // Tambahkan hasil scan
          },
        ),
      ),
    ).then((_) {
      // Memuat ulang data setelah kembali dari halaman pemindaian
      _loadScanResults();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Scan"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: scanResults.isNotEmpty
          ? SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical, // Tambahkan scroll vertikal
                child: DataTable(
                  border: TableBorder.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  headingRowColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.purple),
                  dataRowColor: MaterialStateProperty.resolveWith((states) {
                    return states.contains(MaterialState.selected)
                        ? Colors.purple
                        : Colors.grey.shade200;
                  }),
                  columns: [
                    DataColumn(
                        label: Text('Timestamp',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Nomor Koper',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Nama Jamaah',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Nomor HP',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Kloter',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                  ],
                  rows: scanResults.map((result) {
                    return DataRow(
                      cells: result.map((field) => DataCell(Text(field))).toList(),
                    );
                  }).toList(),
                ),
              ),
            )
          : Center(
              child: Text(
                'Data yang di-scan tidak valid atau belum ada data.',
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onScanButtonPressed,
        backgroundColor: Colors.purple,
        child: Icon(Icons.qr_code_scanner),
      ),
    );
  }
}