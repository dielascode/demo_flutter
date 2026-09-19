import 'package:flutter/material.dart';

class HalamanPage extends StatefulWidget {
  const new({super.key});

  @override
  State<HalamanPage> createState() => _HalamanPageState();
}

class _HalamanPageState extends State<HalamanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Page'),),
      body: Column(
        children: [
          Text("Rizki Niamudikidin"),
          Text("Farid Fadilatul Karimah"),
          Text("Yogi"),
        ],
      ),
    );
    // return const Placeholder();
  }
}