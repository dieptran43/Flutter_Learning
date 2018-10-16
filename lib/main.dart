/**
 IPMAN
 LE VAN DIEP
 */
import 'package:flutter/material.dart';

void main() =>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.account_box, color: Colors.blue, size: 26.0,),
            title: new Text("Le Van Diep", style: new TextStyle(fontWeight: FontWeight.w400)),
            subtitle: new Text("Sofware developer"),
          ),
          new Divider(color: Colors.blue,indent: 16.0),
          new ListTile(
            leading: new Icon(Icons.email, color: Colors.blue, size:26.0),
            title: new Text("levandiep44@gmail.com", style: new TextStyle(fontWeight: FontWeight.w400),),
          ),
          new ListTile(
            leading: new Icon(Icons.phone, color: Colors.blue, size: 26.0,),
            title: new Text("+84-123456789", style: new TextStyle(fontWeight: FontWeight.w300),),
          )
        ],
      ),
    );

    final sizeBox = new Container(
      margin: new EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 220.0,
        child: card,
      ),
    );

    final center = new Center(
      child: sizeBox,
    );

    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Card example"),
        ),
        body: sizeBox,
      ),
      
    );
  }
}