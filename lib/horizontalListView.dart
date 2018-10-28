import 'package:flutter/material.dart';
class HorizontalList extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new HorizontalListState();
  }
}

class HorizontalListState extends State<HorizontalList>{
  @override
  Widget build(BuildContext context){
    final screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: AppBar(
        title: Text("ListView Scroll Horizontal"),
        backgroundColor: Colors.grey,
      ) ,
      body: new Container(
        child: new ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.red,
              child: new Center(
                child: Text('Page No. 1',
                style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ),
            ),
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.blue,
              child: Center(
                child: Text('Page No. 2', style: TextStyle(fontSize: 40.0,color: Colors.red),),
              ),
            ),
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.purple,
              child: Center(
                child: Text('Page No. 3'
                ,style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.orange
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}