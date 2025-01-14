import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/agenda.dart'; // Pastikan ini sesuai dengan path model Anda

Future<void> addAgenda(Agenda agenda) async {
  try {
    final response = await http.post(
      Uri.parse(
          'http://127.0.0.1:1810/api/agenda'), // Ganti dengan IP server yang sesuai
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(agenda.toJson()), // Pastikan menggunakan toJson method
    );

    if (response.statusCode == 201) {
      print('Agenda berhasil ditambahkan');
    } else {
      print(
          'Gagal menambahkan agenda: ${response.statusCode} - ${response.body}');
    }
  } catch (e) {
    print('Terjadi kesalahan saat menambahkan agenda: $e');
  }
}

// Function to fetch all agendas
Future<List<Agenda>> fetchAgendas() async {
  try {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:1810/api/agenda'), // Sesuaikan dengan API
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Agenda> agendas =
          body.map((dynamic item) => Agenda.fromJson(item)).toList();
      return agendas;
    } else {
      throw Exception('Failed to load agendas');
    }
  } catch (e) {
    print('Error fetching agendas: $e');
    rethrow;
  }
}
