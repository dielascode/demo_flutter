class Produk {
  final int id;
  final String kodeProduk;
  final String namaProduk;
  final int qty;
  final int harga;
  final String? gambar;

  Produk({
    required this.id,
    required this.kodeProduk,
    required this.namaProduk,
    required this.qty,
    required this.harga,
    this.gambar,
  });

  factory Produk.fromJson(Map<String, dynamic> json) {
    return Produk(
      id: json['id'],
      kodeProduk: json['kode_barang'],
      namaProduk: json['nama_barang'],
      qty: json['qty'],
      harga: json['harga'],
      gambar: json['gambar'],
    );
  }
}