import 'dart:io';

void main() {
  // Map menyimpan nama -> [nilai, grade]
  Map<String, List<dynamic>> dataMahasiswa = {};

  // Input data mahasiswa
  for (int i = 1; i <= 5; i++) {
    stdout.write('Input nama mahasiswa ke-$i: ');
    String? nama = stdin.readLineSync();

    stdout.write('Input nilai $nama: ');
    int? skor = int.tryParse(stdin.readLineSync() ?? '');

    if (nama != null && skor != null) {
      String grade = tentukanKategori(skor);
      dataMahasiswa[nama] = [skor, grade];
    } else {
      print('⚠️ Input tidak valid, ulangi lagi!\n');
      i--; // ulangi input
    }
  }

  // Tampilkan hasil akhir
  print('\n===== HASIL KATEGORI MAHASISWA =====');
  print('| No | Nama Mahasiswa        | Nilai | Grade |');
  print('|----|-----------------------|-------|-------|');

  int no = 1;
  dataMahasiswa.forEach((nama, info) {
    int nilai = info[0];
    String grade = info[1];
    print(
        '| ${no.toString().padRight(2)} | ${nama.padRight(21)} | ${nilai.toString().padRight(5)} | ${grade.padRight(5)} |');
    no++;
  });
  print('====================================');
}

// Fungsi menentukan kategori nilai
String tentukanKategori(int nilai) {
  if (nilai >= 80) {
    return 'A';
  } else if (nilai >= 60) {
    return 'B';
  } else {
    return 'C';
  }
}
