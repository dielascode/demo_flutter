import 'package:flutter/material.dart';
import 'package:belajar_flutter/hello_word.dart';
import 'package:belajar_flutter/halaman_page.dart';
import 'package:belajar_flutter/register.dart';
import 'package:belajar_flutter/pages/produk_page.dart';
import 'package:belajar_flutter/tampilGambar.dart';
// Tugas 12 disini
import 'package:belajar_flutter/tugas12/Drawwer.dart';
import 'package:belajar_flutter/tugas12/Telegram.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      // home:Telegram(),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.dashboard),
          title: Text("Belajar MaterialApp Scaffold"),
          actions: [
            Icon(Icons.find_in_page)
          ],
          actionsIconTheme: IconThemeData(color: Colors.yellow),
          backgroundColor: Colors.pinkAccent,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(4.0),
              child: Container(
                color: Colors.orange,
                height: 4.0,
              )
          ),
          centerTitle: true,
        ),

      //NEW CHANGES
        floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.pinkAccent,
            child: Text("+"),
        ),

        // body: Row(
        //   children: [
        //     Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle),),
        //     Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.pinkAccent, shape: BoxShape.circle),),
        //     Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.yellowAccent, shape: BoxShape.circle),),
        //
        //   ],
        // ),


        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle),),
            Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.pinkAccent, shape: BoxShape.circle),),
            Row(
              //TAMBAHAN KODE
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.yellowAccent, shape: BoxShape.circle),),
                Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.greenAccent, shape: BoxShape.circle),),
                Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.blueAccent, shape: BoxShape.circle),),
              ],
            ),
          ],
        ),

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
