import 'package:flutter/material.dart';

class ListViewLoadMore extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new InfiniteListViewState();
  }
}

class InfiniteListViewState extends State<ListViewLoadMore>{
  var items = new List<String>.generate(20, (i) =>"Item $i");

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text('Demo ListView Load more'),
      ) ,
      body: new Container(
        child: new ListView.builder(
          itemCount: items.length + 1,
          itemBuilder: (context, index){
            final widgetItem = (index == items.length)?
            new RaisedButton(
              child: const Text('Load more....'),
              color: Colors.greenAccent,
              splashColor: Colors.red,
              elevation: 4.0,
              onPressed: (){
                var nextItems = new List<String>.generate(20, (i){
                   var itemId = i + items.length;
                   return "Item $itemId";
                });
                setState((){
                  items.addAll(nextItems);
                });
              },
            ):new ListTile(
              title: new Text('${items[index]}'),
            );
            return widgetItem;
          },
        ),
      ),
    );
  }
}