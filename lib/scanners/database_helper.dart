import 'package:supabase_flutter/supabase_flutter.dart';
import 'scan_result.dart'; // Pastikan model data ini sudah ada

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  // Inisialisasi Supabase
  Future<void> initSupabase() async {
    await Supabase.initialize(
      url: 'https://gomdaifhmxoazdnjqafl.supabase.co', // URL Supabase kamu
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdvbWRhaWZobXhvYXpkbmpxYWZsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA3NzU1MjEsImV4cCI6MjA0NjM1MTUyMX0.0VAbhiIEhFij_Q1FAGLW9x8_ExM_JktFdh3jWiJVTu8', // Kunci anon Supabase kamu
    );
  }

  // Fungsi untuk menambahkan data scan baru ke dalam Supabase
  Future<void> insertScanResult(ScanResult result) async {
    final response = await Supabase.instance.client
        .from('scan_results') // Nama tabel di Supabase
        .insert(result.toMap())
        .execute();

    if (response.error != null) {
      _handleError('Gagal menyimpan data', response.error!);
      return; // Tambahkan return untuk menghentikan eksekusi jika ada error
    }

    print('Data berhasil disimpan: ${response.data}');
  }

  // Fungsi untuk mengambil semua data hasil scan dari Supabase
  Future<List<ScanResult>> getAllScanResults() async {
    final response = await Supabase.instance.client
        .from('scan_results') // Nama tabel di Supabase
        .select()
        .execute();

    if (response.error != null) {
      _handleError('Gagal mengambil data', response.error!);
      return []; // Mengembalikan list kosong jika gagal
    }

    // Memastikan data yang diterima adalah List dan mengkonversinya
    if (response.data is List) {
      final List<ScanResult> results = (response.data as List)
          .map((item) => ScanResult.fromMap(item))
          .toList();
      return results;
    } else {
      print('Data tidak dalam format List');
      return []; // Kembali ke list kosong jika data tidak sesuai
    }
  }

  // Fungsi untuk menangani error
  void _handleError(String message, PostgrestException error) {
    print('$message: ${error.message}');
    print('Detail Error: ${error.details}'); // Menampilkan detail error jika ada
    print('Code: ${error.code}'); // Menampilkan kode error
  }

  getScanResults() {}
}

extension on PostgrestFilterBuilder {
  execute() {}
}

extension on PostgrestResponse {
  get error => null;
}