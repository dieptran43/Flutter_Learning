import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../services/flowerData.dart';
import '../models/flower.dart';

class ListViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ListViewExampleState();
  }
}

class ListViewExampleState extends State<ListViewExample> {
  var selectedFlower = new Flower();
  List<GestureDetector> _buildListItem() {
    int index = 0;
    return flowers.map((flower) {
      var boxDecoration = index % 2 == 0
          ? new BoxDecoration(color: const Color(0xFFb0e0e6))
          : new BoxDecoration(color: const Color(0xFF7ec0ee));
      if (selectedFlower == flower) {
        boxDecoration = new BoxDecoration(color: Colors.deepOrangeAccent);
      }
      var container = Container(
        decoration: boxDecoration,
        child: new Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: new CachedNetworkImage(
                imageUrl: flower.imageURL,
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    flower.flowerName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    flower.description,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10.0,
                        color: Colors.black,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
      index++;
      final gestureDetetor = GestureDetector(
        child: container,
        onTap: () {
          print("You tapped to '${flower.flowerName}'");
          setState(() {
            selectedFlower = flower;
          });
        },
      );
      return gestureDetetor;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: _buildListItem(),
    );
  }
}
