/**
 IPMAN
 LE VAN DIEP
 */
import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'loginPage.dart';
import 'url_Image.dart';
import 'listView_LoadMore.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Get URL Images',
      home: new ListViewLoadMore(),
    );
  }
}

