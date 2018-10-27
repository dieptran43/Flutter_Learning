/**
 IPMAN
 LE VAN DIEP
 */
import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'loginPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Input demo',
      home: new LoginPage(),
    );
  }
}

