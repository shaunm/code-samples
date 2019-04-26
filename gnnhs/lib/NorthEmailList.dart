import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NorthEmailList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Padding(padding: new EdgeInsets.all(12.0),
            child: new ListView(
              shrinkWrap: true,
              children: <Widget>[
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Administration', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Dan Holtzman"), onPressed: () { launch("mailto:dholtzman@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Patricia Hugo"), onPressed: () { launch("mailto:phugo@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Daniel Krauz"), onPressed: () { launch("mailto:dkrauz@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Ronald Levine"), onPressed: () { launch("mailto:rlevine@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Math', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Joseph Bonvicino"), onPressed: () { launch("mailto:jbonvicino@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Vicky Anastasis"), onPressed: () { launch("mailto:vanastasis@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Colin Cubinski"), onPressed: () { launch("mailto:ccubinski@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Joe Lipani"), onPressed: () { launch("mailto:jlipani@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jamie Melendez"), onPressed: () { launch("mailto:jmelendez@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Elana Sichel"), onPressed: () { launch("mailto:esichel@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jeffrey Sirotkin"), onPressed: () { launch("mailto:jsirotkin@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Nick Turkovich"), onPressed: () { launch("mailto:nturkovich@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jennifer Virgilio"), onPressed: () { launch("mailto:jvirgilio@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Katelyn Williams"), onPressed: () { launch("mailto:kwilliams@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Gregory Yager"), onPressed: () { launch("mailto:gyager@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("John Zak"), onPressed: () { launch("mailto:jzak@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Science', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jessica Schust"), onPressed: () { launch("mailto:jschust@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Soheila Afkhami"), onPressed: () { launch("mailto:safkhami@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Randy Appell"), onPressed: () { launch("mailto:rappell@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Christopher Bambino"), onPressed: () { launch("mailto:cbambino@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jessica Baylis"), onPressed: () { launch("mailto:jbaylis@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Christopher Ceasar"), onPressed: () { launch("mailto:cceasar@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Laura Kachmar"), onPressed: () { launch("mailto:lkachmar@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Christina Keys"), onPressed: () { launch("mailto:ckeys@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Courtney Knacke"), onPressed: () { launch("mailto:cknacke@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Takoa Lawson"), onPressed: () { launch("mailto:tlawson@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Maya Lerner"), onPressed: () { launch("mailto:mlerner@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Christine McCarthy"), onPressed: () { launch("mailto:cmccarthy@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Alan Schorn"), onPressed: () { launch("mailto:aschorn@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jenna Veveakis"), onPressed: () { launch("mailto:jveveakis@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('LOTE', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Madalyn Deluccia"), onPressed: () { launch("mailto:mdeluccia@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Joanna Asvestas"), onPressed: () { launch("mailto:jasvestas@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Hanna Bokhour"), onPressed: () { launch("mailto:hbokhour@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Caitlin Healy"), onPressed: () { launch("mailto:chealy@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Israel Henriquez"), onPressed: () { launch("mailto:ihenriquez@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Bessie Karanikolas"), onPressed: () { launch("mailto:bkaranikolas@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Johanne Lynch"), onPressed: () { launch("mailto:jlynch@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Kathy McAleer"), onPressed: () { launch("mailto:kmcaleer@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Yamit Nassiri"), onPressed: () { launch("mailto:ynassiri@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Chris Pipala"), onPressed: () { launch("mailto:cpipala@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Alison Silk"), onPressed: () { launch("mailto:asilk@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Maggie Wu"), onPressed: () { launch("mailto:hwu@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('English', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Kathlyne Snyder"), onPressed: () { launch("mailto:ksnyder@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Ed Baluyut"), onPressed: () { launch("mailto:ebaluyut@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Cathlene Behar"), onPressed: () { launch("mailto:cbehar@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Matt Blackstone"), onPressed: () { launch("mailto:mblackstone@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("​William Corrao"), onPressed: () { launch("mailto:wcorrao@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jeffrey Gilden"), onPressed: () { launch("mailto:jgilden@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Kieran Griffin"), onPressed: () { launch("mailto:kgriffin@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Thomas Hahn"), onPressed: () { launch("mailto:thahn@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Scott Honig"), onPressed: () { launch("mailto:shonig@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("​Erin Lee"), onPressed: () { launch("mailto:elee@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Eileen Madigan-Berhman"), onPressed: () { launch("mailto:emadigan-berhmann@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Susanne Marcus"), onPressed: () { launch("mailto:smarcus@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Michael Schad"), onPressed: () { launch("mailto:mschad@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Loren Tunick"), onPressed: () { launch("mailto:ltunick@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Theresa Walter"), onPressed: () { launch("mailto:twalter@greatneck.k12.ny.us"); }, ),

                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Social Studies', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Susan Babkes"), onPressed: () { launch("mailto:sbabkes@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Paul Becker"), onPressed: () { launch("mailto:pbecker@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Gary Cohen"), onPressed: () { launch("mailto:gcohen@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Samantha Gallagher"), onPressed: () { launch("mailto:sgallagher@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("​Lauren Maksym"), onPressed: () { launch("mailto:lmaksym@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("John Paul Mannebach"), onPressed: () { launch("mailto:jmannebach@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("​Thomas McDonald"), onPressed: () { launch("mailto:tmcdonald@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Pamela Ostrover"), onPressed: () { launch("mailto:postrover@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Eric Ragot"), onPressed: () { launch("mailto:eragot@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Paul Reilly"), onPressed: () { launch("mailto:preilly@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Laura Talamo"), onPressed: () { launch("mailto:ltalamo@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Business', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Kevin Spellman"), onPressed: () { launch("mailto:kspellman@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Richard Marchese"), onPressed: () { launch("mailto:rmarchese@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Sharon Miller"), onPressed: () { launch("mailto:smiller@greatneck.k12.ny.us"); }, ),
                    new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Paul Rodriquez"), onPressed: () { launch("mailto:prodriquez@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Guidance', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Michael Neary"), onPressed: () { launch("mailto:mneary@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jordana Cohen"), onPressed: () { launch("mailto:jcohen@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Kristen Corrigan"), onPressed: () { launch("mailto:kcorrigan@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Peter Hidasi"), onPressed: () { launch("mailto:phidasi@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Corinne Tortorice"), onPressed: () { launch("mailto:ctortorice@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Amanda Reilly"), onPressed: () { launch("mailto:areilly@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Kim Semder"), onPressed: () { launch("mailto:ksemder@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Anton Berzins"), onPressed: () { launch("mailto:aberzins@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Michelle Boone"), onPressed: () { launch("mailto:mboone@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Oana Scholl"), onPressed: () { launch("mailto:oscholl@greatneck.k12.ny.us"); }, ),

                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Special Education', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Thomas Mangan"), onPressed: () { launch("mailto:tmangan@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Melissa Baldassarri"), onPressed: () { launch("mailto:mbaldassarri@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Olga Caldarera"), onPressed: () { launch("mailto:ocaldarera@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Katie Duggan"), onPressed: () { launch("mailto:kduggan@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Maria Fiore"), onPressed: () { launch("mailto:mfiore@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Amy Ford"), onPressed: () { launch("mailto:aford@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Susan Giampetruzzi"), onPressed: () { launch("mailto:sgiampetruzzi@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Lindsay Haskel"), onPressed: () { launch("mailto:lhaskel@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("James Kinder"), onPressed: () { launch("mailto:jkinder@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Donna Kramer"), onPressed: () { launch("mailto:dkramer@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Michael Lewis"), onPressed: () { launch("mailto:mlewis@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Merryl Mandler"), onPressed: () { launch("mailto:mmandler@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Dan Moriarity"), onPressed: () { launch("mailto:dmoriarity@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jennifer Nastri"), onPressed: () { launch("mailto:jnastri@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jaime Reyna"), onPressed: () { launch("mailto:jreyna@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Gail Schwartz"), onPressed: () { launch("mailto:gschwartz@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Blair Silver"), onPressed: () { launch("mailto:bsilver@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Lloyd Sussman"), onPressed: () { launch("mailto:lsussman@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Joan Varghese"), onPressed: () { launch("mailto:jvarghese@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Danielle Verderose"), onPressed: () { launch("mailto:dverderose@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Physical Education', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Eamonn Flood"), onPressed: () { launch("mailto:eflood@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Ciro Ambrosio"), onPressed: () { launch("mailto:cambrosio@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Justin Cisario"), onPressed: () { launch("mailto:jcisario@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Erik Connolly"), onPressed: () { launch("mailto:econnolly@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Marisol Mahler"), onPressed: () { launch("mailto:mmahler@greatneck.k12.ny.us"); }, ),

                    new Padding(padding: new EdgeInsets.symmetric(vertical: 8.0), child: new Text("Non-NHS Coaching Staff")),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("James Bailin"), onPressed: () { launch("mailto:jbailin@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Michael Caldararo"), onPressed: () { launch("mailto:mcaldararo@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Mariuca Ganz​"), onPressed: () { launch("mailto:mganz@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Kevin Graham"), onPressed: () { launch("mailto:kgraham@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Michael Kazin"), onPressed: () { launch("mailto:mkazin@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Adam McKenzie"), onPressed: () { launch("mailto:amckenzie@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Ed Proctor"), onPressed: () { launch("mailto:ed.proctor11@gmail.com"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Savana Puca"), onPressed: () { launch("mailto:spuca@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jordan Barback"), onPressed: () { launch("mailto:jbarback@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Fine Arts', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Pamela Levy﻿"), onPressed: () { launch("mailto:plevy@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Joseph Giacalone"), onPressed: () { launch("mailto:jgiacalone@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Emily Man"), onPressed: () { launch("mailto:eman@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Linda Haase"), onPressed: () { launch("mailto:lhaase@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Samantha Barratt"), onPressed: () { launch("mailto:sbarratt@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Ilana Meredith"), onPressed: () { launch("mailto:imeredith@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Joseph Rutkowski"), onPressed: () { launch("mailto:jrutkowski@greatneck.k12.ny.us"); }, ),

                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Health', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Kathleen Carpenter"), onPressed: () { launch("mailto:kcarpenter@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Lauren Mock"), onPressed: () { launch("mailto:lmock@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Nurse', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Carmen Puccio"), onPressed: () { launch("mailto:cpuccio@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Study Skills/ESL', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jodi Kahn"), onPressed: () { launch("mailto:jkahn@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Susan Chung"), onPressed: () { launch("mailto:schung@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Jean Marie Cromwell"), onPressed: () { launch("mailto:jcromwell@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Libra Patrice"), onPressed: () { launch("mailto:lpatrice@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Rachel Rahr"), onPressed: () { launch("mailto:rrahr@greatneck.k12.ny.us"); }, ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.symmetric(vertical: 16.0), child: new Text('Library', style: new TextStyle(fontSize: 30.0))),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Lori Cooper"), onPressed: () { launch("mailto:lcooper@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Matthew Resnick"), onPressed: () { launch("mailto:mresnick@greatneck.k12.ny.us"); }, ),
                     new FlatButton( textColor: Theme.of(context).primaryColor, child: new Text("Michael Meehan"), onPressed: () { launch("mailto:mmeehan@greatneck.k12.ny.us"); }, ),
                  ],
                ),
              ],
            )

        ));
  }
}