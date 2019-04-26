import 'dart:async';
import 'package:flutter/material.dart';
import 'package:async_loader/async_loader.dart';
import 'dart:io';
import 'dart:convert';
import 'package:quiver/async.dart';

//refresh; _asyncLoaderState.currentState.reloadState()
class TimerBuilder extends StatelessWidget {
  final GlobalKey<AsyncLoaderState> _asyncLoaderState =
      new GlobalKey<AsyncLoaderState>();

  @override
  Widget build(BuildContext context) {
    var _asyncLoader = new AsyncLoader(
      key: _asyncLoaderState,
      initState: () async => await getTimerApi(),
      renderLoad: () => new CircularProgressIndicator(),
      renderError: ([error]) => new Padding(
          padding: new EdgeInsets.symmetric(vertical: 20.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text(
                "Connection Error!",
                style: new TextStyle(
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              new Text(
                "Some features may be unavailable.",
                style: new TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
              new Icon(const IconData(0xe2c1, fontFamily: 'MaterialIcons'),
                  size: 32.0),
              new Padding(
                  padding: new EdgeInsets.symmetric(vertical: 20.0),
                  child: new RaisedButton(
                    onPressed: () =>
                        _asyncLoaderState.currentState.reloadState(),
                    child: new Text("Refresh"),
                  ))
            ],
          )),
      renderSuccess: ({data}) => new Container(
            child: data,
          ),
    );

    return new Center(child: _asyncLoader);
  }
}

const TIMEOUT = const Duration(seconds: 5);

getTimerApi() async {
  List data;
  String sessionStatus;
  String period;
  String timeLeft;
  var httpClient = new HttpClient();
  var uri = new Uri.https('gnnhs.ngtapps.com', '/timer');
  var request = await httpClient.getUrl(uri);
  var response = await request.close();
  var responseBody = await response.transform(utf8.decoder).join();
  data = jsonDecode(responseBody);
  sessionStatus = data[0]["insession"].toString();
  period = data[0]["period"].toString();
  timeLeft = data[0]["timeleft"].toString();

  if (sessionStatus == "false") {
    return new Text("Last fetched @" + new DateTime.now().hour.toString() + ":" + new DateTime.now().minute.toString(),
        style: new TextStyle(
          fontSize: 32.0,
        ));
  } else {
    return new Column(
      children: <Widget>[
        new Center(child: new Text(period,style: new TextStyle(fontSize: 32.0,))),
        new Row(
          children: <Widget>[],
        )
      ],
    );
  }
}
