import 'package:flutter/material.dart';
import 'package:learn/post_result_model.dart';
import 'package:learn/user_model.dart';

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
  User user = null;
  String output = "no data";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Example',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Demo Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((user != null)
                  ? user.id + " | " + user.name
                  : "Tidak ada data"),
              ElevatedButton(
                onPressed: () {
                  User.connectToAPI("2").then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text("GET BY ID"),
              ),
              Text(output),
              ElevatedButton(
                onPressed: () {
                  User.getUsers("1").then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++)
                      output = output + " [ " + users[i].name + " ] ";
                    setState(() {});
                  });
                },
                child: Text("GET ALL"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
