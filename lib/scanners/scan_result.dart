class ScanResult implements Comparable<ScanResult> {
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

  // Mengonversi objek ScanResult ke Map sesuai format database
  Map<String, dynamic> toMap() {
    return {
      'timestamp': timestamp,
      'nomor_koper': nomorKoper,
      'nama_jamaah': namaJamaah,
      'nomor_hp': nomorHP,
      'kloter': kloter,
    };
  }

  // Membuat objek ScanResult dari Map
  factory ScanResult.fromMap(Map<String, dynamic> map) {
    return ScanResult(
      timestamp: map['timestamp'] ?? '',
      nomorKoper: map['nomor_koper'] ?? '',
      namaJamaah: map['nama_jamaah'] ?? '',
      nomorHP: map['nomor_hp'] ?? '',
      kloter: map['kloter'] ?? '',
    );
  }

  // Untuk mengurutkan berdasarkan nomorKoper dalam format numerik
  @override
  int compareTo(ScanResult other) {
    final currentKoperNum = int.tryParse(nomorKoper) ?? 0;
    final otherKoperNum = int.tryParse(other.nomorKoper) ?? 0;
    return currentKoperNum.compareTo(otherKoperNum);
  }

  // Mengonversi objek ScanResult ke JSON
  Map<String, dynamic> toJson() {
    return toMap();
  }

  // Membuat objek ScanResult dari JSON
  factory ScanResult.fromJson(Map<String, dynamic> json) {
    return ScanResult.fromMap(json);
  }

  // Membuat salinan objek ScanResult dengan opsi untuk memperbarui beberapa field
  ScanResult copyWith({
    String? timestamp,
    String? nomorKoper,
    String? namaJamaah,
    String? nomorHP,
    String? kloter,
  }) {
    return ScanResult(
      timestamp: timestamp ?? this.timestamp,
      nomorKoper: nomorKoper ?? this.nomorKoper,
      namaJamaah: namaJamaah ?? this.namaJamaah,
      nomorHP: nomorHP ?? this.nomorHP,
      kloter: kloter ?? this.kloter,
    );
  }
}