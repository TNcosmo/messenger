import 'package:flutter/material.dart';
import 'package:messenger/person.dart';

class messages extends StatelessWidget {
  final person Person;
  const messages ({Key? key, required this.Person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Person.name),),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(Person.received),
          ),
          ListTile(
            title: Text(Person.sent),
          )
        ],
      )
    );
  }
}
