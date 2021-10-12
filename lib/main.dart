import 'package:flutter/material.dart';
import 'package:learn/post_result_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? postResult.name +
                      " | " +
                      postResult.job +
                      " | " +
                      postResult.id +
                      " | " +
                      postResult.created
                  : "Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI("Baidu", "Dokter").then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text("POST"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
