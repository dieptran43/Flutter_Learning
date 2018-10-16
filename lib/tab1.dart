import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Center(
      child: 
        new Text('This is Home tab; font Charmonman',
              style: new TextStyle(
                fontFamily: 'Charmonman',
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ))
      
    );
  }
}