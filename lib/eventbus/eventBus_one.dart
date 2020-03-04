
import 'package:flutter/material.dart';
import 'package:movie_futter/eventbus/eventBus_two.dart';
import 'package:movie_futter/eventbus/event_util.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    title: "EventBus",

    home: EventBusDemo2(),
  ));

}

class EventBusDemo2 extends StatefulWidget {
  @override
  _EventBusDemo2State createState() => _EventBusDemo2State();
}

class _EventBusDemo2State extends State<EventBusDemo2> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: FlatButton(
            onPressed: () {

              EventBusUtil.getInstance().fire(PageEvent('测试传值'));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EventBusDemo()));
            },
            child: Text('点击跳转'),
          ),
        ));
  }
}
