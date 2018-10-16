/**
 IPMAN
 LE VAN DIEP
 */
import 'package:flutter/material.dart';
void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
 final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _showSnackBar(){
    print('Show Snackbar here...');
    final snackBar = new SnackBar(
      content: new Text('This is a SnackBar'),
      duration: new Duration(seconds: 3),
      backgroundColor: Colors.black,
      action: new SnackBarAction(label: "OK",onPressed: (){
        print('Button OK cliked!!!');
      },),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'SnackBar example',
      home: new Scaffold(
        key: _scaffoldKey,
        appBar: new AppBar(
          title: new Text('An example of SnackBar'),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.info),
              onPressed: _showSnackBar,
            )
          ],
        ),
      ),
    );
  }
}