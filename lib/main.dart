import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.red,
          border: Border(
              top: BorderSide(
            color: Colors.purple,
            width: 5,
          ))),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: "Comment",
        ),
        Tab(
          icon: Icon(Icons.ac_unit),
          text: "Ac Unit",
        ),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar Style"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                color: Colors.brown,
                child: myTabBar,
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Tabbar 1 ku"),
              ),
              Center(
                child: Text("Tabbar 2 ku"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
