

import 'dart:io';

void main(List<String> arguments) {
//  // print('Hello world: ${project3.calculate()}!');
//  var fl = List<int>.filled(4,3);
//  fl[0] = 1;
//  fl[1] = 2;
//  fl[2] = 3;
//  fl[3] = 4;
//  //fl[4] = 5;

//  //cetak
//  //stdout.writeln(fl);

//  var gl = [1, 2, 3];
//  gl.add(4);
//  gl.remove(2);
//  stdout.writeln(gl);

// var setNilai1 = <int> {1,2,3,4};
// var setNilai2 = <int> {3,3,4,5};
// print (setNilai2);
// print (setNilai1.union(setNilai2));
// print (setNilai1.intersection(setNilai2));

var setNilai1 =<String>{};
  var setNilai2 =<int>{1,2,3};
 
 stdout.writeln("Jumlah data setNilai1 = ");
  String? input1 = stdin.readLineSync();
  int jumlah1 = (int.tryParse(input1 ?? '')) ?? 0;
  for (var i = 0; i < jumlah1; i++) {
    stdout.writeln("Masukkan Nilai Ke-${i+1} = ");
    String? inputNilai = stdin.readLineSync();
    String nilai1 = inputNilai ?? '0';
    setNilai1.add(nilai1);

  }
  var NilaiList = setNilai1.toList();
  print(NilaiList.elementAt(1));
  //print(setNilai1.elementAt(0));
}