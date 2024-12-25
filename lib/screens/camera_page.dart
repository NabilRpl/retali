import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:qr_code/konten/upload_content_page.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  List<Map<String, dynamic>> tasks = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchTasks();
  }

  Future<void> fetchTasks() async {
    try {
      final response = await http
          .get(Uri.parse('http://192.168.18.121:1810/api/tugaskonten'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          tasks = List<Map<String, dynamic>>.from(data);
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
        });
        throw Exception('Failed to load tasks');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching tasks: $e');
    }
  }

  // void navigateToDetailPage(Map<String, dynamic> task) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => DetailPage(task: task),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : tasks.isEmpty
              ? Center(child: Text('No tasks available'))
              : ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    return Card(
                      margin: EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(task['judul'],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(task['deskripsi'],
                            maxLines: 2, overflow: TextOverflow.ellipsis),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UploadContentPage(
                                        tugasKontenId: task['id'],
                                      )),
                            );
                          },
                          child: Text('Kerjakan'),
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}

// class DetailPage extends StatelessWidget {
//   final Map<String, dynamic> task;

//   DetailPage({required this.task});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(task['title']),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Text(task['deskripsi']),
//       ),
//     );
//   }
// }
