import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinksWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: <Widget>[
          new ListTile(
              title: new RaisedButton(
                  textColor: Colors.white,
                  color: Colors.grey,
                  child: new Text("North Website"),
                  onPressed: (){
                    launch("https://gnnhshomepage.weebly.com/", forceSafariVC: true);
                  }
              )
          ),
          new ListTile(
            title: new RaisedButton(
                color: Colors.grey,
                textColor: Colors.white,
                child: new Text("Bus Schedule"),
                onPressed: (){
                  launch("https://gnnhshomepage.weebly.com/uploads/5/9/7/8/59789245/late_bus_schedule.pdf", forceSafariVC: true);
                }
            )
          ),
          new ListTile(
              title: new RaisedButton(
                  color: Colors.grey,
                  textColor: Colors.white,
                  child: new Text("Calandar Overview"),
                  onPressed: (){
                    launch("https://gnnhshomepage.weebly.com/uploads/5/9/7/8/59789245/overview16-17.pdf", forceSafariVC: true);
                  }
              )
          ),
          new ListTile(
              title: new RaisedButton(
                  color: Colors.grey,
                  textColor: Colors.white,
                  child: new Text("Clubs and Activities"),
                  onPressed: (){
                    launch("https://gnnhshomepage.weebly.com/uploads/5/9/7/8/59789245/northhighschoolclubsandactivities2016-2017__4_.pdf", forceSafariVC: true);
                  }
              )
          ),
          new ListTile(
              title: new RaisedButton(
                  color: Colors.grey,
                  textColor: Colors.white,
                  child: new Text("Google Classroom"),
                  onPressed: (){
                    launch("https://classroom.google.com/", forceSafariVC: true);
                  }
              )
          ),
          new ListTile(
              title: new RaisedButton(
                  color: Colors.grey,
                  textColor: Colors.white,
                  child: new Text("Infinite Campus"),
                  onPressed: (){
                    launch("https://ic.greatneck.k12.ny.us/campus/greatneck.jsp", forceSafariVC: true);
                  }
              )
          ),
          new ListTile(
              title: new RaisedButton(
                  color: Colors.grey,
                  textColor: Colors.white,
                  child: new Text("Library Databases"),
                  onPressed: (){
                    launch("https://gnnhslibrary.weebly.com/databases.html", forceSafariVC: true);
                  }
              )
          ),
          new ListTile(
              title: new RaisedButton(
                  color: Colors.grey,
                  textColor: Colors.white,
                  child: new Text("WebMail"),
                  onPressed: (){
                    launch("https://mail.greatneck.k12.ny.us/owa/auth/logon.aspx?replaceCurrent=1&url=https%3a%2f%2fmail.greatneck.k12.ny.us%2fowa%2f%23authRedirect%3dtrue", forceSafariVC: true);;
                  }
              )
          ),
          new ListTile(
              title: new RaisedButton(
                  color: Colors.grey,
                  textColor: Colors.white,
                  child: new Text("Naviance"),
                  onPressed: (){
                    launch("https://connection.naviance.com/family-connection/auth/login/?hsid=gnnhs", forceSafariVC: true);
                  }
              )
          ),

        ]
    ))
    ;
  }

}