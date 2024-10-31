import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/agenda.dart';
import 'agenda_detail_page.dart'; // Import halaman detail

class AgendaPage extends StatefulWidget {
  @override
  _AgendaPageState createState() => _AgendaPageState();
}

class _AgendaPageState extends State<AgendaPage> {
  late Future<List<Agenda>> futureAgendas;

  @override
  void initState() {
    super.initState();
    futureAgendas = fetchAgendas(); // Panggil fungsi untuk mengambil data
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Agenda'),
      ),
      body: Center(
        child: FutureBuilder<List<Agenda>>(
          future: futureAgendas,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Agenda> agendas = snapshot.data!;
              return ListView.builder(
                itemCount: agendas.length,
                itemBuilder: (context, index) {
                  return GestureDetector( // Gunakan GestureDetector untuk menangani klik
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AgendaDetailPage(agenda: agendas[index]),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 242, 255, 100),
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                              offset: const Offset(0, 3), // Shadow position
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Garis hitam di dalam box (di sebelah kiri konten)
                            Container(
                              width: 4, // Ketebalan garis
                              height: 100, // Sesuaikan dengan tinggi box
                              color: Colors.black, // Warna garis hitam
                            ),
                            const SizedBox(width: 16), // Jarak antara garis dan konten

                            // Konten agenda di dalam box
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      agendas[index].kegiatan,
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(
                                      agendas[index].deskripsi ?? 'Tidak ada deskripsi',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
