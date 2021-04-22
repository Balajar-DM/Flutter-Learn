import 'package:flutter/material.dart';
import 'package:learn/post_result_model.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // ignore: avoid_init_to_null
  PostResult postResult = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo Post Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                (postResult != null)
                    ? postResult.id +
                        " | " +
                        postResult.name +
                        " | " +
                        postResult.job +
                        " | " +
                        postResult.created
                    : "Tidak ada data",
              ),
              ElevatedButton(
                onPressed: () {
                  PostResult.connectToApi("Dion", "Dokter").then((value) {
                    postResult = value;
                  });
                },
                child: Text("POST"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
