/**
 IPMAN
 LE VAN DIEP
 */

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text("Programming tutorials for you and for me.",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                  ),
                  )
                ),
                new Text("This is example tutorial videos in flutter",
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 16.0
                  )
                ),
              ],
            ),
          ),
          new Icon(Icons.favorite, color: Colors.red),
          new Text(" 200", style: new TextStyle(fontSize: 16.0))
        ],
      ),
    );

    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter App Image and Text")
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset('images/emca_01.jpeg',
            fit: BoxFit.scaleDown),
            titleSection
          ],
        ),
      ),
    );

  }
}