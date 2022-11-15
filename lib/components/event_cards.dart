import 'package:application_2/events.dart';
import 'package:flutter/material.dart';

class eventsCard extends StatefulWidget {
  const eventsCard({
    Key? key,
    required this.events,
  }) : super(key: key);

  final Eve events;

  @override
  State<eventsCard> createState() => _eventsCardState();
}

class _eventsCardState extends State<eventsCard> {
  bool _isEnabled = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initstate");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Card(
      color: Colors.orange,
      elevation: 10,
      margin: EdgeInsets.symmetric(vertical: 7.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        enabled: _isEnabled,
        title: Text(widget.events.name),
        subtitle:
            Text("${widget.events.location} - ${widget.events.startDateTime}"),
        leading: Icon(
          Icons.local_activity,
          color: Colors.black,
          size: 40.0,
        ),
        trailing: IconButton(
          icon: _isEnabled ? Icon(Icons.lock_outline) : Icon(Icons.lock_open),
          onPressed: () => setState(() {
            _isEnabled = !_isEnabled;
          }),
        ),
        onTap: () => print("${widget.events.name} -- tap"),
        onLongPress: () => print("${widget.events.name} -- longtap"),
      ),
    );
  }
}
