import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ContactWidget.dart';
import 'BellsWidget.dart';
import 'LinksWidget.dart';
import 'Feed.dart';
import 'dart:async';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'Login.dart';
import 'TimerB.dart';
import 'NearbyFeed.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'GNNHS',
        theme: new ThemeData(
          primaryColor: const Color(0xFF3f51b5),
          accentColor: const Color(0xFFf47839),
          primaryColorBrightness: Brightness.dark,
          fontFamily: 'Avenir',
        ),
        home: new SplashScreen(),
        routes: {
          '/unauth': (context) => new MyHomePage(title: 'GNNHS'),
          '/auth': (context) => new Authed(title: 'GNNHS'),
        });
  }
}

Future<bool> checkUserAndNavigate(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return (prefs.getBool('authenticated') ?? false);
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    checkUserAndNavigate(context).then((res) {
      if (!res) {
        Navigator.pushReplacementNamed(context, '/unauth');
      } else {
        Navigator.pushReplacementNamed(context, '/auth');
      }
    });

    return new Scaffold(
      body: new Card(child: new Center(child: new CircularProgressIndicator())),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController;

  /// Indicating the current displayed page
  /// 0: feed
  /// 1: bells
  /// 2: contacts
  /// 3: links
  /// 4: nearby
  int _page = 0;
  final GlobalKey<ScaffoldState> mScaffoldState =
      new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
        key: mScaffoldState,
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new Text(widget.title),
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
        body: new PageView(
            children: [
              new Column(
                children: <Widget>[
                  new Expanded(
                      child:
                          new Feed()) /*

                      new SizedBox(
                          height:(MediaQuery.of(context).size.height* 0.8),
                          child: new Feed()
                      ),*/
                ],
              ),
              new Container(child: new BellsWidget()), //bells
              new Container(child: new ContactWidget()), //contact page
              new Container(child: new LinksWidget()),
              new Container(child: new NearbyFeed()),
            ],
            controller: _pageController,
            onPageChanged: onPageChanged,
            physics: new NeverScrollableScrollPhysics()),
        //fabs and stuff
        bottomNavigationBar: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.autorenew), title: new Text("Feed")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.schedule), title: new Text("Bells")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.contacts), title: new Text("Contacts")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.link), title: new Text("Links")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.location_on), title: new Text("Nearby"))
            ],
            onTap: navigationTapped,
            currentIndex: _page));
  }

  void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 1), curve: Curves.linear);
  }



  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();

  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}

class Authed extends StatefulWidget {
  Authed({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _AuthedState createState() => new _AuthedState();
}

class _AuthedState extends State<Authed> {
  PageController _pageController2;

  /// Indicating the current displayed page
  /// 0: feed
  /// 1: bells
  /// 2: contacts
  /// 3: links
  /// 4: nearby
  int _page = 0;
  String userData = "";
  final GlobalKey<ScaffoldState> mScaffoldState =
  new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return new Scaffold(
        key: mScaffoldState,
        appBar: new AppBar(
          title: new Text(widget.title),
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
                  title: new Text('My Reports'),//https://ic.greatneck.k12.ny.us/campus/grading/reports/reportCard/reportCard.fop?x=portal.PortalOutline&x=portal.PortalReportCard&personID=50742&calendarID=603&reportID=804&mode=reportCard
                ), //DrawerHeader
                new ListTile(
                  title: new Text('Sign Out'),
                  onTap: () {
                    logOut();
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
        body: new PageView(
            children: [
              new Column(
                children: <Widget>[
                  new Expanded(
                      child:
                      new Feed()
                  )
                ],
              ),
              new Container(child: new BellsWidget()), //bells
              new Container(child: new ContactWidget()), //contact page
              new Container(child: new LinksWidget()),
              new Container(child: new NearbyFeed()),
            ],
            controller: _pageController2,
            onPageChanged: onPageChanged2,
            physics: new NeverScrollableScrollPhysics()),
        //fabs and stuff
        bottomNavigationBar: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.autorenew), title: new Text("Feed")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.schedule), title: new Text("Bells")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.contacts), title: new Text("Contacts")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.link), title: new Text("Links")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.location_on), title: new Text("Nearby"))
            ],
            onTap: navigationTapped,
            currentIndex: _page));
  }

  void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController2.animateToPage(page,
        duration: const Duration(milliseconds: 1), curve: Curves.linear);
  }

  _loadData() async {
    Map data;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userData = (prefs.getString('userData') ?? "");
      print(userData);

      data = jsonDecode(userData);
      print("name:" + data["firstName"]);
      final snackBar =
      new SnackBar(content: new Text('Hi, ' + data["firstName"] + "!"));
      mScaffoldState.currentState.showSnackBar(snackBar);

    });
  }

  void onPageChanged2(int page) {
    setState(() {
      this._page = page;
    });
  }

  void logOut() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('userData');
    prefs.remove('authenticated');
    print("Logged out");
    Navigator.pushReplacementNamed(context, '/unauth');
  }

  @override
  void initState() {
    super.initState();
    _pageController2 = new PageController();
    _loadData();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController2.dispose();
  }
}

