import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  var title = '';
  Drawer _buildDrawer(context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image.asset(
                    'images/image00.JPEG',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                  new Text(
                    'Le Dieu Phuc',
                    style: new TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    'Supper Software Developer',
                    style: new TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            decoration: new BoxDecoration(color: Colors.blue),
          ),
          new ListTile(
            leading: new Icon(Icons.photo_album),
            title: new Text('Photos'),
            onTap: () {
              setState(() {
                this.title = 'This is Photos page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.notifications),
            title: new Text('Notifications'),
            onTap: () {
              setState(() {
                this.title = 'This is Photos page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
              leading: new Icon(Icons.settings),
              title: new Text('Settings'),
              onTap: () {
                setState(() {
                  this.title = 'This is Settings';
                });
                Navigator.pop(context);
              }),
          new Divider(
            color: Colors.black45,
            indent: 16.0,
          ),
          new ListTile(
            title: new Text('About Us'),
            onTap: () {
              setState(() {
                this.title = 'About page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text('Privacy'),
            onTap: () {
              setState(() {
                this.title = 'This is Privacy page';
              });
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Drawer in flutter'),
      ),
      body: new Center(
        child: new Text(
          this.title,
          style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
        ),
      ),
      drawer: _buildDrawer(context),
    );
  }
}
