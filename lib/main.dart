/**
 IPMAN
 LE VAN DIEP
 */

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    child: new Text(
                      "Người đẹp siêu ngầu đến từ An Giang",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    )),
                new Text("Cô ấy siêu lỳ và rất là dễ cưng, có điều hay khóc nhòe",
                    style:
                        new TextStyle(color: Colors.grey[850], fontSize: 16.0)),
              ],
            ),
          ),
          new Icon(Icons.favorite, color: Colors.red),
          new Text(" 200", style: new TextStyle(fontSize: 16.0))
        ],
      ),
    );

    Widget buildButton(IconData icon, String buttonTitle) {
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(buttonTitle,
                  style: new TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: tintColor))),
        ],
      );
    }

    Widget fourButtonsSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildButton(Icons.home, "Home"),
          buildButton(Icons.arrow_back, "Back"),
          buildButton(Icons.arrow_forward, "Next"),
          buildButton(Icons.share, "Share")
        ],
      ),
    );

    final bottomTextSection = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Text(
          "Đây là em Lê Diệu Phúc(Coca) biệt danh khác là Siêu Mè Nheo. Chiều cao: chân dài miên man(90cm). Cân nặng: 10kg. Số đo 3 vòng thì cực chuẩn....",
          style: new TextStyle(color: Colors.grey[850], fontSize: 16.0)),
    );

    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(title: new Text("Chương trình tìm siêu dễ cưng")),
        body: new ListView(
          children: <Widget>[
            new Image.asset('images/emca_01.jpeg', fit: BoxFit.scaleDown),
            titleSection,
            fourButtonsSection,
            bottomTextSection
          ],
        ),
      ),
    );
  }
}
