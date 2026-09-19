import 'package:flutter/material.dart';

class HelloWord extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello World'),),
      body: Column(
        children: [
          Text("Farid Fadila"),
          Text("Farid Fadila"),
          Text("Farid Fadila"),
        ],
      ),
    );
    // return const Placeholder();
  }
}