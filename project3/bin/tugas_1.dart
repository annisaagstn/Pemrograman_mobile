import 'dart:io';

void main(List<String> arguments) {
  //1. Buat program untuk menyimpan daftar nama mahasiswa menggunakan Growable List, lalu tampilkan jumlah datanya.
 var mahasiswa = <String>[];

 while (true) {
    stdout.write("Masukkan nama mahasiswa (ketik 'stop' untuk berhenti): ");
    var input = stdin.readLineSync()?.trim();  
    if (input != null && input.toLowerCase() == 'stop') {
      break; 
    }
    if (input != null && input.isNotEmpty) {
      mahasiswa.add(input); 
    } else {
      print("Nama tidak boleh kosong. Silakan masukkan nama yang valid.");
    }
  }

  print("\nData mahasiswa dalam list = $mahasiswa");
  print("Jumlah mahasiswa: ${mahasiswa.length}");
}
