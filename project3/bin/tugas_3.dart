
void main() {
  var barang = <String, Map<String, dynamic>>{
    'BRG01': {'nama': 'Kipas Angin', 'harga': 90555},
    'BRG02': {'nama': 'Botol Tupperware', 'harga': 35000},
    'BRG03': {'nama': 'Bekal Makan', 'harga': 20000},
  };

  print("Data Barang Awal:");
  barang.forEach((kode, data) {
    print('Kode: $kode, Nama: ${data['nama']}, Harga: ${data['harga']}');
  });

  barang['BRG04'] = {'nama': 'Wajan', 'harga': 50000};
  barang['BRG02'] = {'nama': 'Piring', 'harga': 6000};
  barang['BRG05'] = {'nama': 'Sendok', 'harga': 2000};

  print("\nData Barang Setelah Update:");
  barang.forEach((kode, data) {
    print('Kode: $kode, Nama: ${data['nama']}, Harga: ${data['harga']}');
  });
}