class ScanResult {
  final String timestamp;
  final String nomorKoper;
  final String namaJamaah;
  final String nomorHP;
  final String kloter;

  ScanResult({
    required this.timestamp,
    required this.nomorKoper,
    required this.namaJamaah,
    required this.nomorHP,
    required this.kloter,
  });

  Map<String, dynamic> toMap() {
    return {
      'timestamp': timestamp,
      'nomorKoper': nomorKoper,
      'namaJamaah': namaJamaah,
      'nomorHP': nomorHP,
      'kloter': kloter,
    };
  }

  // Metode untuk membuat ScanResult dari Map jika diperlukan
  factory ScanResult.fromMap(Map<String, dynamic> map) {
    return ScanResult(
      timestamp: map['timestamp'],
      nomorKoper: map['nomorKoper'],
      namaJamaah: map['namaJamaah'],
      nomorHP: map['nomorHP'],
      kloter: map['kloter'],
    );
  }
}