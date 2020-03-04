
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_futter/api/apiservice.dart';


class MyPingLun extends StatefulWidget {
  @override
  _mypinglun createState() => _mypinglun();
}

class _mypinglun extends State<MyPingLun> {
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
          title: Text('我的评论'),
          bottom: TabBar(
            ///TabBar布局
            tabs: <Widget>[
              Tab(text: "电影"),
              Tab(text: "影院"),
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
        movieoinglun(),
        yingyuanpinglun(),
      ],
    );
  }
}
//电影
class movieoinglun extends StatefulWidget{
  @override
  _movieoinglun createState() => new _movieoinglun();
}
class _movieoinglun extends State<movieoinglun>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

//影院
class yingyuanpinglun extends StatefulWidget{
  @override
  _yingyuanpinglun createState() => new _yingyuanpinglun();
}

class _yingyuanpinglun extends State<yingyuanpinglun>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}