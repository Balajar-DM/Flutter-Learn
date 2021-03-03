import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Contoh Tabbar"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.comment),
                    text: "Comment",
                  ),
                  Tab(
                    icon: Icon(Icons.ac_unit),
                    text: "Ac Unit",
                  ),
                  Tab(
                    icon: Icon(Icons.access_alarm),
                    text: "Alarm",
                  ),
                  Tab(
                    icon: Icon(Icons.accessibility),
                    text: "Access",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text("Tabbar 1"),
                ),
                Center(
                  child: Text("Tabbar 2"),
                ),
                Center(
                  child: Text("Tabbar 3"),
                ),
                Center(
                  child: Text("Tabbar 4"),
                ),
              ],
            ),
          )),
    );
  }
}
