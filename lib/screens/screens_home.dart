import 'package:application_2/components/event_cards.dart';
import 'package:application_2/events.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter application"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(40),
          itemCount: events.length,
          itemBuilder: (_, index) => eventsCard(events: events[index])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("+"),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
