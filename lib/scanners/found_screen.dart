import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qr_code/scanners/scanner.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'database_helper.dart';
import 'scan_result.dart';

class FoundScreen extends StatefulWidget {
  final String value;
  final Function() screenClose;

  const FoundScreen({
    Key? key,
    required this.value,
    required this.screenClose, required String data,
  }) : super(key: key);

  @override
  State<FoundScreen> createState() => _FoundScreenState();
}

class _FoundScreenState extends State<FoundScreen> {
  late List<String> dataFields;
  late String timeStep;
  final DatabaseHelper dbHelper = DatabaseHelper();
  final SupabaseClient supabase = Supabase.instance.client;

  @override
  void initState() {
    super.initState();
    timeStep = DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now());
    dataFields = widget.value.split(';');

    if (dataFields.length >= 4) {
      _saveScanResult(); // Save scan result locally
      _saveScanResultToSupabase(); // Save scan result to Supabase
    } else {
      print("Invalid scanned data.");
      // Optional: show a snackbar or message to the user if data is invalid
    }
  }

  Future<void> _saveScanResult() async {
    ScanResult result = ScanResult(
      timestamp: timeStep,
      nomorKoper: dataFields[0],
      namaJamaah: dataFields[1],
      nomorHP: dataFields[2],
      kloter: dataFields[3],
    );
    await dbHelper.insertScanResult(result);
  }

  Future<void> _saveScanResultToSupabase() async {
    final response = await supabase.from('barcode').insert({
      'timestamp': timeStep,
      'nomor_koper': dataFields[0],
      'nama_jamaah': dataFields[1],
      'nomor_hp': dataFields[2],
      'kloter': dataFields[3],
    });

    if (response.error != null) {
      print("Error saving to Supabase: ${response.error!.message}");
    } else {
      print("Data saved to Supabase successfully");
    }
  }

  // Method to initiate a new scan
  Future<void> _scanBarcode() async {
    // Your barcode scanning logic goes here
    print("Initiating new scan...");
    // Call your scanning function here and handle the result
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan Results"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: dataFields.length >= 4
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
                      rows: [
                        DataRow(
                          cells: [
                            DataCell(Text(timeStep)),
                            DataCell(Text(dataFields[0])),
                            DataCell(Text(dataFields[1])),
                            DataCell(Text(dataFields[2])),
                            DataCell(Text(dataFields[3])),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Center(
              child: Text(
                'Invalid scanned data.',
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Scanner()),
          );
        },
        child: Icon(Icons.qr_code, color: Colors.white),
        backgroundColor:const Color.fromARGB(255, 78, 29, 87),
        shape: CircleBorder(),
      elevation: 6.0,
      ),
    );
  }
}