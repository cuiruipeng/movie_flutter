
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_futter/api/apiservice.dart';


class GouPiaoJiLu extends StatefulWidget {
  @override
  _goupiaojilu createState() => _goupiaojilu();
}

class _goupiaojilu extends State<GouPiaoJiLu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child:Scaffold(
        backgroundColor: Color(0xff141931),
        appBar: AppBar(
          backgroundColor: Color(0xff141931),
          leading: Builder(builder: (context) {
            return IconButton(
              // icon: Icon(Icons.list, color: Colors.white),
              icon:Icon(Icons.arrow_back),
              onPressed: () {
                // 返回
                Navigator.of(context).pop();
              },
            );
          }),
          //   backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('购票记录'),
          bottom: TabBar(
            ///TabBar布局
            tabs: <Widget>[
              Tab(text: "待付款"),
              Tab(text: "已付款"),
            ],
          ),
        ),
        body:Tabs(),
      ),
    );
  }
}
class Tabs extends StatefulWidget {
  @override
  TabsWidget createState() => TabsWidget();
}
class TabsWidget extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TabBarView(
      children: <Widget>[
        daifukuan(),
        yifukuan(),
      ],
    );
  }
}
//待付款
class daifukuan extends StatefulWidget{
  @override
  _daifukuan createState() => new _daifukuan();
}
class _daifukuan extends State<daifukuan>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

//已付款
class yifukuan extends StatefulWidget{
  @override
  _yifukuan createState() => new _yifukuan();
}
class _yifukuan extends State<yifukuan>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}