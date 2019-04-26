import 'package:flutter/material.dart';

class BellsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Padding(padding: new EdgeInsets.all(12.0),
            child: new ListView(
              shrinkWrap: true,
              children: <Widget>[
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Regular', style: new TextStyle(fontSize: 24.0))),
                new Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Text('Period 1:',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                            new Expanded(
                              child: new Text('8:00 - 8:41',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Text('Period 2:',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                            new Expanded(
                              child: new Text('8:44 - 9:25',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Text('Period 3:',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                            new Expanded(
                              child: new Text('9:28 - 10:09',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Text('Period 4:',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                            new Expanded(
                              child: new Text('10:12 - 10:53',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Text('Period 5:',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                            new Expanded(
                              child: new Text('10:56 - 11:37',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Text('Period 6:',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                            new Expanded(
                              child: new Text('11:40 - 12:21',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Text('Period 7:',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                            new Expanded(
                              child: new Text('12:24 - 1:05',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Text('Period 8:',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                            new Expanded(
                              child: new Text('1:08 - 1:49',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Text('Period 9:',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                            new Expanded(
                              child: new Text('1:52 - 2:33',
                                  style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                      ],
                    ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Wednesday', style: new TextStyle(fontSize: 24.0))),
                new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Advisory:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('8:00 - 8:33',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 1:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('8:36 - 9:13',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 2:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('9:16 - 9:53',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 3:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('9:56 - 10:33',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 4:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('10:36 - 11:13',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 5:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('11:16 - 11:53',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 6:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('11:56 - 12:33',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 7:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('12:36 - 1:13',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 8:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('1:16 - 1:53',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 9:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('1:56 - 2:33',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Assembly', style: new TextStyle(fontSize: 24.0))),
                new Column(
                  children: <Widget>[

                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 1:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('8:00 - 8:36',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 2:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('8:39 - 9:15',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 3:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('9:18 - 9:57',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 3:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('10:00 - 10:39',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 4:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('10:42 - 11:18',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 5:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('11:21 - 11:57',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 6:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('12:00 - 12:36',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 7:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('12:39 - 1:15',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 8:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('1:18 - 1:54',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text('Period 9:',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                        new Expanded(
                          child: new Text('1:57 - 2:33',
                              style: new TextStyle(fontSize: 18.0,), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )

        ));
  }
}