class UserResult {
  final String leaderID;
  final String password;
  final String nomorKoper;
  final String namaJamaah;
  final String nomorHP;
  final String kloter;

 UserResult({
    required this.leaderID,
    required this.password,
    required this.nomorKoper,
    required this.namaJamaah,
    required this.nomorHP,
    required this.kloter,
  });

  Map<String, dynamic> toMap() {
    return {
      'leaderID': leaderID,
      'password': password,
      'nomorKoper': nomorKoper,
      'namaJamaah': namaJamaah,
      'nomorHP': nomorHP,
      'kloter': kloter,
    };
  }

  // Metode untuk membuat UserResult dari Map jika diperlukan
  factory UserResult.fromMap(Map<String, dynamic> map) {
    return UserResult(
      leaderID: map['leaderID'],
      password: map['password'],
      nomorKoper: map['nomorKoper'],
      namaJamaah: map['namaJamaah'],
      nomorHP: map['nomorHP'],
      kloter: map['kloter'],
    );
  }
}