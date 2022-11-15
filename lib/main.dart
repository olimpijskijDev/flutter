import 'package:flutter/material.dart';
import 'package:application_2/custon_icons.dart';

void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  const FlutterTutorialApp({Key? key}) : super(key: key);

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // textBaseline: TextBaseline.ideographic,
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(20.0),
              child: Text("1"),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(30.0),
              child: Text("1"),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(40.0),
              child: Text("1"),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("+"),
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}
