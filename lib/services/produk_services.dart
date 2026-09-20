import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/produk.dart';

class ProdukService {
  static const String baseUrl = 'http://192.168.1.2:8000';

  static Future<List<Produk>> getProduk() async {
    final response = await http.get(
      Uri.parse('$baseUrl/api/produkapi'),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      final List data = json['data'];

      return data
          .map((item) => Produk.fromJson(item))
          .toList();
    } else {
      throw Exception('Gagal mengambil data produk');
    }
  }
}