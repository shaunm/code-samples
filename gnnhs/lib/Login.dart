import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:url_launcher/url_launcher.dart';
import 'main.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

//refresh; _asyncLoaderState.currentState.reloadState()
class Login extends StatelessWidget {
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new InkWell(
            child: new Text("GNNHS"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
          backgroundColor: new Color(0xFF3f51b5),
          centerTitle: true,
          actions: <Widget>[
            new ImageIcon(
              new AssetImage('resources/blazer.png'),
              color: const Color(0xFFf47839),
              size: 36.0,
            ),
          ],
        ),
        drawer: new Drawer(
            child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('Coming Soon:'),
            ), //DrawerHeader
            new ListTile(
              title: new Text('Sign In'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text('About'),
              onTap: () {
                launch("https://ngtapps.com/");
              },
            ),
          ],
        )),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Text('Login', style: new TextStyle(fontSize: 30.0))),
            new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Form(
                    child: new Column(children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new TextFormField(
                      controller: this._nameController,
                      decoration: new InputDecoration(labelText: "Username (student ID)"),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new TextFormField(
                      controller: this._passController,
                      decoration: new InputDecoration(labelText: "Password (first and last intitials + 6 digit birthday)"),
                    ),
                  ),
                ]))),
            new Padding(
                padding: new EdgeInsets.symmetric(vertical: 40.0),
                child: new Center(
                    child: new RaisedButton(
                  child: new Text("Submit"),
                  onPressed: () {
                    authenticateUser(context,
                        name: this._nameController.text,
                        pass: this._passController.text);
                  },
                )))
          ],
        ));
  }

  void authenticateUser(context, {name, pass}) async {
    print(name);
    http
        .get("http://gnnhs.ngtapps.com/login?format=true&username=" +
            name +
            "&password=" +
            pass)
        .then((response) async {
      String responseBody = response.body;
      print(responseBody);
      if (responseBody.contains("personID")) {
        // obtain shared preferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('userData', responseBody);
        prefs.setBool('authenticated', true);
        print("success");
        Navigator.pushReplacementNamed(context, "/auth");
      } else {
        print("error unable to authenticate");
        var alert = new AlertDialog(
          title: new Text("Sign in Error"),
          content: new Text("There was an error signing in. Please try again."),
        );
        showDialog(context: context, child: alert);
      }
    });
  }
}
