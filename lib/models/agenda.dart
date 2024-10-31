import 'dart:convert';

class Agenda {
  final String kegiatan;
  final String? deskripsi;
  final String? jadwal;

  Agenda({required this.kegiatan, this.deskripsi, this.jadwal});

  // Factory method to create Agenda object from JSON
  factory Agenda.fromJson(Map<String, dynamic> json) {
    return Agenda(
      kegiatan: json['kegiatan'],
      deskripsi: json['deskripsi'],
      jadwal: json['jadwal'],
    );
  }

  // Method to convert Agenda object to JSON
  Map<String, dynamic> toJson() {
    return {
      'kegiatan': kegiatan,
      'deskripsi': deskripsi,
      'jadwal': jadwal,
    };
  }
}
