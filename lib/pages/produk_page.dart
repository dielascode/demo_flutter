import 'package:flutter/material.dart';

import '../models/produk.dart';
import '../services/produk_services.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  late Future<List<Produk>> futureProduk;

  @override
  void initState() {
    super.initState();

    futureProduk = ProdukService.getProduk();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk Toko Sawit Prabowo'),
      ),

      body: FutureBuilder<List<Produk>>(
        future: futureProduk,

        builder: (context, snapshot) {
          // Loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          // Error
          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Gagal mengambil data:\n${snapshot.error}',
                textAlign: TextAlign.center,
              ),
            );
          }

          // Data kosong
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('Belum ada produk'),
            );
          }

          final produk = snapshot.data!;

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: produk.length,

            itemBuilder: (context, index) {
              final item = produk[index];

              return Card(
                margin: const EdgeInsets.only(bottom: 12),

                child: ListTile(
                  leading: const Icon(
                    Icons.inventory_2,
                    size: 40,
                  ),

                  title: Text(
                    item.namaProduk,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  subtitle: Text(
                    '${item.kodeProduk}\n'
                        'Stok: ${item.qty}\n'
                        'Harga: Rp ${item.harga}',
                  ),

                  isThreeLine: true,
                ),
              );
            },
          );
        },
      ),
    );
  }
}