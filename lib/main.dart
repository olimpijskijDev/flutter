// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:application_2/custon_icons.dart';

import 'events.dart';

void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  List<Eve> get events => [
        Eve(name: "eve 1", location: "loc 1", startDateTime: DateTime.now()),
        Eve(name: "eve 2", location: "loc 2", startDateTime: DateTime.now()),
        Eve(name: "eve 3", location: "loc 3", startDateTime: DateTime.now()),
        Eve(name: "eve 4", location: "loc 4", startDateTime: DateTime.now()),
        Eve(name: "eve 5", location: "loc 5", startDateTime: DateTime.now()),
        Eve(name: "eve 6", location: "loc 6", startDateTime: DateTime.now()),
      ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter application"),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(40),
            itemCount: events.length,
            itemBuilder: (_, index) => Text(
                  "$index -- ${events[index].name} -- ${events[index].location} -- ${events[index].startDateTime}",
                  style: TextStyle(fontSize: 20),
                )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("+"),
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}
