
void main() {
  var barang = <String, Map<String, dynamic>>{
    'BRG01': {'nama': 'Tas', 'harga': 150000},
    'BRG02': {'nama': 'High Heels', 'harga': 75000},
    'BRG03': {'nama': 'Topi', 'harga': 25000},
  };

  print("Data Barang Awal:");
  barang.forEach((kode, data) {
    print('Kode: $kode, Nama: ${data['nama']}, Harga: ${data['harga']}');
  });

  barang['BRG04'] = {'nama': 'Skintific', 'harga': 120000};
  barang['BRG02'] = {'nama': 'Wardah', 'harga': 90000};
  barang['BRG05'] = {'nama': 'Whitelab', 'harga': 110000};

  print("\nData Barang Setelah Update:");
  barang.forEach((kode, data) {
    print('Kode: $kode, Nama: ${data['nama']}, Harga: ${data['harga']}');
  });
}