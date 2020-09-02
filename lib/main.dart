import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini adalah Text";

  /*Method biasa
  void tombolDitekan() {
    setState(() {
      message = "Tombol ini sudah ditekan";
    });
  }*/

  /*Anonymous method = Method yang tidak memiliki nama
  () { kode_program }
  Digunakan untuk satu kali saja atau tidak digunakan di tempat lain*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                  child: Text("Tekan Saya"),
                  //Penggunaan anonymous method
                  onPressed: () {
                    setState(() {
                      message = "Tombol ini sudah ditekan";
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
