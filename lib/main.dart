/**
 IPMAN
 LE VAN DIEP
 */
import 'package:flutter/material.dart';
import 'mainpage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Drawer in Flutter',
      home: new MainPage(),
    );
  }
}

