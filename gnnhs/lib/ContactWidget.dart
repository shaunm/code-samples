import 'package:flutter/material.dart';
import 'NorthPhoneList.dart';
import 'NorthEmailList.dart';

class ContactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new TabBar(
            tabs: [
              new Tab(icon: new Icon(Icons.phone, color: Theme
                  .of(context)
                  .primaryColor)),
              new Tab(icon: new Icon(Icons.mail_outline, color: Theme
                  .of(context)
                  .primaryColor)),
            ],
          ),

          body: new TabBarView(
            children: [
//Phones
              new NorthPhoneList(),
//Emails
              new NorthEmailList()
            ],
          ),)
    );
  }
}