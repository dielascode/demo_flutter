import 'package:flutter/material.dart';

class BelajarImage extends StatelessWidget {
  const BelajarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Belajar Tampil Gambar"),
        ),
        body: Image.asset('assets/images/mieayam.jpg'),
      ),
    );
  }
}
