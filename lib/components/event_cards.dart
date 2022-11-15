import 'package:application_2/events.dart';
import 'package:flutter/material.dart';

class eventsCard extends StatelessWidget {
  const eventsCard({
    Key? key,
    required this.events,
  }) : super(key: key);

  final Eve events;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      elevation: 10,
      margin: EdgeInsets.symmetric(vertical: 7.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        title: Text(events.name),
        subtitle: Text(
            "${events.location} - ${events.startDateTime}"),
        leading: Icon(
          Icons.local_activity,
          color: Colors.black,
          size: 40.0,
        ),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: null,
        ),
        onTap: () => print("${events.name} -- tap"),
        onLongPress: () =>
            print("${events.name} -- longtap"),
      ),
    );
  }
}