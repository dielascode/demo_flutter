import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget { //datanya kan bisa berubah jadi pakai stateful
  const RegisterPage({super.key}); //construct

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) { 
    return Scaffold( //kerangka utama ini
      appBar: AppBar(
        title: Text("Halo Bapak Riski"),
      ),
      body: SingleChildScrollView( //biar bisa di scrool
        child: Column(
          children: [
            Row( //biar kesamping
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //dikasi gap
              children: [
                Column(children: <Widget>[Icon(Icons.timer), Text("Setting")]),
                Column(children: <Widget>[Icon(Icons.search), Text("Cari")]),
                Column(children: <Widget>[Icon(Icons.menu), Text("Menu")]),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20), //jarak pixel semua sisi
              child: Column(
                children: [
                  TextFormField( //inputan
                    decoration: InputDecoration(hintText: "fullname"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Masukkan User Name"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "email")
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "password", suffixIcon: Icon(Icons.visibility_off)),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "phone")
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),

                    child: 
                    ElevatedButton(
                    style: ElevatedButton.styleFrom( //dikasi style disini 
                      backgroundColor: Colors.pink,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric( //ukuran
                        horizontal: 40,
                        vertical: 15
                      )
                    ),
                    onPressed: () { //event ketika ditekan nanti muncul di terminal
                      print("submit ditekan!");
                    },
                    child: Text("Submit"),
                  ),

                  )
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
