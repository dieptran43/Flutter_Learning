import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class URLImage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return URLImageState();
  }
}

class URLImageState extends State<URLImage>{
  var imageURLs = [
    'https://cdn.24h.com.vn/upload/3-2018/images/2018-08-07/1533604035-207-ngat-ngay-voi-nhan-sac-hoi-me-bim-sua-2-1533603955-width600height480.jpg',
    'https://cdn.24h.com.vn/upload/4-2018/images/2018-10-27/1540609504-306-mac-lum-xum-nguoi-thu-3-bao-anh-van-sexy-goi-cam-het-nac-tren-san-khau-khoi-my-1-1540605721-width660height491.jpg',
    'https://cdn.24h.com.vn/upload/4-2018/images/2018-10-27/1540611500-72-can-canh-nhan-sac-sunmi-12-1540607605-width660height878.jpg',
    'https://cdn.24h.com.vn/upload/4-2018/images/2018-10-27/1540609503-235-bao-anh-2-1540606200-width660height990.jpg'
  ];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context){
    final cachedImage = new CachedNetworkImage(
      placeholder: new CircularProgressIndicator(),
      imageUrl: imageURLs[currentIndex],
      height: 350.0,
    );

    return new Scaffold(
      appBar: new AppBar(
        title: Text('Load URL image in Flutter'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Center(
                  child: cachedImage,
                )
              ],
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new RaisedButton(
                    child: new Text("Back"),
                    onPressed: (){
                      setState((){
                        currentIndex = currentIndex <=0 ? currentIndex : currentIndex -1;
                      });
                    },
                  ),
                ),
                new Expanded(
                  child: new RaisedButton(
                    child: new Text("Next"),
                    onPressed: (){
                      setState((){
                        currentIndex = (currentIndex >= imageURLs.length -1) ?
                        currentIndex : currentIndex + 1;
                      });
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}