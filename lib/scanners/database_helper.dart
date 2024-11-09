import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'scan_result.dart'; // Import model data

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'scan_results.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          '''CREATE TABLE scan_results (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            timestamp TEXT,
            nomorKoper TEXT,
            namaJamaah TEXT,
            nomorHP TEXT,
            kloter TEXT
          )''',
        );
      },
    );
  }

  // Fungsi untuk menambahkan data scan baru ke dalam database
  Future<int> insertScanResult(ScanResult result) async {
    final db = await database;
    return await db.insert(
      'scan_results', 
      result.toMap(), 
      conflictAlgorithm: ConflictAlgorithm.ignore, // Tidak mengganti data yang ada
    );
  }

  // Fungsi untuk mengambil semua data hasil scan dari database
  Future<List<ScanResult>> getAllScanResults() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('scan_results');
    return List.generate(maps.length, (i) => ScanResult.fromMap(maps[i]));
  }

  // Fungsi untuk menutup database
  Future<void> close() async {
    final db = await database;
    db.close();
  }
}