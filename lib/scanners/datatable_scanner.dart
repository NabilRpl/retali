import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class ScanAndDisplayPage extends StatefulWidget {
  @override
  _ScanAndDisplayPageState createState() => _ScanAndDisplayPageState();
}

class _ScanAndDisplayPageState extends State<ScanAndDisplayPage> {
  List<Map<String, dynamic>> tableData = [];

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchData(); // Fetch initial data
  }

  Future<void> _fetchData() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('Token');
    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.get(
        Uri.parse('http://192.168.18.121:1810/api/getalldatatable'),
        headers: {
          'Content-Type': 'application/json',
          "Authorization": "Bearer $token"
        },
      );

      if (response.statusCode == 200) {
        setState(() {
          tableData =
              List<Map<String, dynamic>>.from(json.decode(response.body));
        });
      } else {
        _showError('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      _showError('Error fetching data: $e');
      print(e);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> _postData(String qrData) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('Token');
    final parts = qrData.split(';');
    if (parts.length < 4) {
      _showError('Invalid QR format');
      return;
    }

    final data = {
      'nomor_koper': parts[0],
      'nama_jamaah': parts[1],
      'nomor_hp': parts[2],
      'kloter': parts[3],
    };

    try {
      final response = await http.post(
        Uri.parse('http://192.168.18.121:1810/api/datatable'),
        headers: {
          'Content-Type': 'application/json',
          "Authorization": "Bearer $token"
        },
        body: json.encode(data),
      );

      if (response.statusCode == 200) {
        _fetchData();
      } else {
        _showError('Failed to submit data: ${response.statusCode}');
      }
    } catch (e) {
      _showError('Error submitting data: $e');
    }
  }

  void _onScanButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MobileScannerPage(onScan: (String qrData) {
          Navigator.pop(context);
          _postData(qrData);
        }),
      ),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan & Display Table'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : tableData.isEmpty
              ? Center(child: Text('No data available'))
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('Timestamp')),
                      DataColumn(label: Text('Nomor Koper')),
                      DataColumn(label: Text('Nama Jamaah')),
                      DataColumn(label: Text('Nomor HP')),
                      DataColumn(label: Text('Kloter')),
                    ],
                    rows: tableData.map((data) {
                      return DataRow(cells: [
                        DataCell(Text(data['timestamp'].toString() ?? '-')),
                        DataCell(Text(data['nomor_koper'].toString() ?? '-')),
                        DataCell(Text(data['nama_jamaah'].toString() ?? '-')),
                        DataCell(Text(data['nomor_hp'].toString() ?? '-')),
                        DataCell(Text(data['kloter_id'].toString() ?? '-')),
                      ]);
                    }).toList(),
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

class MobileScannerPage extends StatelessWidget {
  final Function(String qrData) onScan;

  MobileScannerPage({required this.onScan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR Code'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: MobileScanner(
        onDetect: (BarcodeCapture barcode) {
          if (barcode.barcodes.isNotEmpty) {
            final String? rawValue = barcode.barcodes.first.rawValue;
            if (rawValue != null) {
              debugPrint('QR Code Detected: $rawValue');
              onScan(rawValue);
            } else {
              debugPrint('QR Code Not Found');
            }
          }
        },
      ),
    );
  }
}
