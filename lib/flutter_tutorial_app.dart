
import 'package:application_2/events.dart';
import 'package:flutter/material.dart';
import 'screens/screens_home.dart';

class FlutterTutorialApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: homeScreen(),
    );
  }
}

