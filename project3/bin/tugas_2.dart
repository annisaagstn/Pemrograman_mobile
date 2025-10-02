import 'dart:io';

void main() {
  //Buat program untuk menghitung union & intersection dari dua set yang diinput manual. Data string.
  stdout.write("Masukkan profesi Set A : ");
  var inputA = stdin.readLineSync()!;
  var setA = inputA.split(',').map((e) => e.trim()).toSet();

  stdout.write("Masukkan profesi Set B : ");
  var inputB = stdin.readLineSync()!;
  var setB = inputB.split(',').map((e) => e.trim()).toSet();

  var gabungan = setA.union(setB);
  var irisan = setA.intersection(setB);

  print('\nSet A: $setA');
  print('Set B: $setB');
  print('Union: $gabungan');
  print('Intersection: $irisan');
}
