import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.orange),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState()=> new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int count =0;
  void _incrementCounter(){
    setState((){
      count++;
    });
  }

  @override
  // TODO: implement widget
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Hello cac bac, tong so lan nhap Add la: "),
            new Text('$count', style: Theme.of(context).textTheme.display2,)
          ]
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Nhan vao de Add",
        child: new Icon(Icons.add_a_photo),
      ),
    );
  }
}