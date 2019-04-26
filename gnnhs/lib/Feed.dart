import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'TimerB.dart';
class Feed extends StatefulWidget {
  @override
  FeedState createState() => new FeedState();
}

class FeedState extends State<Feed> {

  List data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://gnnhs.ngtapps.com/feed"),
        headers: {
          "Accept": "application/json"
        }
    );

    this.setState(() {
      data = jsonDecode(response.body);
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
      body: new ListView(
        children: <Widget>[
          new Padding(padding: new EdgeInsets.all(20.0), child: TimerBuilder()) ,
          new ListView.builder(
            shrinkWrap: true,
            physics: new NeverScrollableScrollPhysics(),
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, int index) {
              return new Padding(padding: new EdgeInsets.all(10.0),
                  child: new Card(
                      child: new Padding(padding: new EdgeInsets.all(10.0),
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[

                            new Padding(padding: new EdgeInsets.only(top: 25.0),
                              child:
                              new Padding(padding: new EdgeInsets.only(bottom: 8.0),
                                  child:
                                  new Text(data[index]["date"].replaceAll(
                                      new RegExp(r'<.*?>'), ''),
                                      style: new TextStyle(fontSize: 30.0))),),
                            new Padding(padding: new EdgeInsets.only(bottom: 25.0),
                              child:
                              new Text(data[index]["event"].replaceAll(
                                  new RegExp(r'(<br>)'), " & ").replaceAll(
                                  new RegExp(r'<.*?>'), ""), softWrap: true),),
                          ],
                        ),


                      )));
            },
          ),

        ],
      )




    );
  }
}