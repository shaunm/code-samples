import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NorthPhoneList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: <Widget>[
        new ListTile(
          title: new Text("Dan Holtzman, Principal"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414701");
            },
          ),
        ),
        new ListTile(
          title: new Text(
              "Patricia Hugo, Assistant Principal"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414703");
            },
          ),
        ),
        new ListTile(
          title: new Text(
              "Daniel Krauz, Assistant Principal"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414704");
            },
          ),
        ),
        new ListTile(
          title: new Text(
              "Ronald Levine, Assistant Principal"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414702");
            },
          ),
        ),
        new ListTile(
          title: new Text("Attendance"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414715");
            },
          ),
        ),
        new ListTile(
          title: new Text("Business"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414741");
            },
          ),
        ),
        new ListTile(
          title: new Text("Community School"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414760");
            },
          ),
        ),
        new ListTile(
          title: new Text("English"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414744");
            },
          ),
        ),
        new ListTile(
          title: new Text("Performing Arts"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414740");
            },
          ),
        ),
        new ListTile(
          title: new Text("Guidance"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414720");
            },
          ),
        ),
        new ListTile(
          title: new Text("Health"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414747");
            },
          ),
        ),
        new ListTile(
          title: new Text("Library"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414749");
            },
          ),
        ),
        new ListTile(
          title: new Text("Languages other than English"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414748");
            },
          ),
        ),
        new ListTile(
          title: new Text("Main Office"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414700");
            },
          ),
        ),
        new ListTile(
          title: new Text("Math"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414750");
            },
          ),
        ),
        new ListTile(
          title: new Text("Music"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414751");
            },
          ),
        ),
        new ListTile(
          title: new Text("Nurse"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414710");
            },
          ),
        ),
        new ListTile(
          title: new Text("Physical Education"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414752");
            },
          ),
        ),
        new ListTile(
          title: new Text("Science"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414754");
            },
          ),
        ),
        new ListTile(
          title: new Text("Social Studies"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414755");
            },
          ),
        ),
        new ListTile(
          title: new Text("Special Education"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414756");
            },
          ),
        ),
        new ListTile(
          title: new Text("Study Skills"),
          trailing: new FlatButton(
            child: const Text('Call'),
            onPressed: () {
              launch("tel:15164414758");
            },
          ),
        ),


      ],
    );

  }
}
