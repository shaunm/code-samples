import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NearbyFeed extends StatefulWidget {
  @override
  NearbyFeedState createState() => new NearbyFeedState();
}

class NearbyFeedState extends State<NearbyFeed> {

  List data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://gnnhs.ngtapps.com/nearby"),
        headers: {
          "Accept": "application/json"
        }
    );

    this.setState(() {
      data = jsonDecode(response.body)['results'];
    });

    return "Success!";
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        shrinkWrap: true,

        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Padding(padding: new EdgeInsets.all(10.0),
            child: new Card(
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new ListTile(
                    title: new Text(data[index]["name"].toString()),
                  ),
                  new ButtonTheme.bar( // make buttons use the appropriate styles for cards
                    child: new ButtonBar(
                      children: <Widget>[
                        new FlatButton(
                          child: new Text(data[index]["vicinity"].toString()),
                          onPressed: () {
                            launch("https://maps.google.com?q=" + data[index]["name"]+ ", " + data[index]["vicinity"].toString());
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )


          );
        },
      ),
    );
  }
}