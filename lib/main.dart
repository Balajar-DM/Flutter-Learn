import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan TextStyle"),
        ),
        body: Center(
          child: Text(
            "Ini adalah Text",
            style: TextStyle(
                fontFamily: "AeroviasBrasilNF",
                fontSize: 30,
                decoration: TextDecoration.overline,
                decorationColor: Colors.red,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}
