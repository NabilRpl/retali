import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  final List<Map<String, dynamic>> attendanceRecords = [
    {"name": "Jamaah 1", "status": "Hadir"},
    {"name": "Jamaah 2", "status": "Tidak Hadir"},
    {"name": "Jamaah 3", "status": "Hadir"},
    // Add more records as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absensi Jamaah'),
        backgroundColor: const Color.fromARGB(255, 78, 29, 87),
      ),
      body: ListView.builder(
        itemCount: attendanceRecords.length,
        itemBuilder: (context, index) {
          final record = attendanceRecords[index];
          return ListTile(
            title: Text(record["name"]),
            trailing: Text(
              record["status"],
              style: TextStyle(
                color: record["status"] == "Hadir" ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}