/**
 IPMAN
 LE VAN DIEP
 */
import 'package:flutter/material.dart';

void main() =>runApp(new MyApp());

class MainPage extends StatefulWidget{
  final String title;
  @override
  MainPage({this.title}): super();

  @override
  State<StatefulWidget> createState(){
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage>
{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTitles(29),
      ),
    );
  }
}

List<Widget> _buildGridTitles(numberOfTiles){
  List<Container> containers = new List<Container>.generate(numberOfTiles, 
  (int index){
    final imageName = index < 9 ?'images/image0${index + 1}.JPG': 'images/image${index +1}.JPG';
    return new Container(
      child: new Image.asset(
        imageName, fit: BoxFit.fill,
      ),
    );
  });
  return containers;
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "",
      home: new MainPage(title:"GridView of images"),
    );
  }
}