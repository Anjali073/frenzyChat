import 'package:flutter/material.dart';

class Msgs extends StatefulWidget {
  @override
  State<Msgs> createState() => _MsgsState();
}

var name = "Riya";
var msg = ["Good Morning", "Good Afternoon", "Good Evening"];

class _MsgsState extends State<Msgs> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 20,
              foregroundImage: AssetImage('assets/images/person1.jpeg'),
            ),
            title: Text(name),
            subtitle: Text(msg[index]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
            color: Colors.black54,
          );
        },
        itemCount: msg.length);
  }
}
