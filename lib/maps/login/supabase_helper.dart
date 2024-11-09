import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'user_result.dart'; // Import model data

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
    String path = join(await getDatabasesPath(), 'user.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          '''CREATE TABLE user_result (
            leaderID TEXT PRIMARY KEY,
            password TEXT,
            nomorKoper TEXT,
            namaJamaah TEXT,
            nomorHP TEXT,
            kloter TEXT
          )''',
        );
      },
    );
  }

  // Function to insert a new scan result into the database
  Future<int> insertScanResult(UserResult result) async {
    final db = await database;
    return await db.insert(
      'user_result', 
      result.toMap(), 
      conflictAlgorithm: ConflictAlgorithm.ignore, // Avoid replacing existing data
    );
  }

  // Function to retrieve user details by leaderID
  Future<UserResult?> getUserDetails(String leaderID) async {
    final db = await database;
    final List<Map<String, dynamic>> result = await db.query(
      'user_result',
      where: 'leaderID = ?',
      whereArgs: [leaderID],
    );

    if (result.isNotEmpty) {
      return UserResult.fromMap(result.first);
    }
    return null;
  }

  // Function to close the database
  Future<void> close() async {
    final db = await database;
    db.close();
  }

  initSupabase() {}
}
