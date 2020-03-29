import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MYApp());

class MYApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeContent());
  }
}


class HomeContent extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeContent> {
  /** 两种方式可以监听
   * controller:
   * 1.可以设置默认offset
   * 2.可以监听滚动,也可以监听滚动的位置
   * NotificationListener:
   * 1.开始滚动和结束滚动
   */
  ScrollController _controller = ScrollController(initialScrollOffset: 0); //偏移
  bool _isShowFloatingButton = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener((){
//      print("监听滚动${_controller.offset}");
      setState(() {
        _isShowFloatingButton = (_controller.offset >= 500);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滚动监听"),
      ),
      body: NotificationListener(
        onNotification: (ScrollNotification notification){
          if (notification is ScrollUpdateNotification){
            print("滚动监听..${notification.metrics.pixels}");
          }else if (notification is ScrollStartNotification) {
            print("滚动开始 ");
          }else if (notification is ScrollEndNotification) {
            print("滚动结束");
          }

          return true;
        },
        child: ListView.builder(
            controller: _controller,
            itemCount: 100,
            itemBuilder: (BuildContext ctn , int index){
              return ListTile(
                leading: Icon(Icons.face),
                title: Text("$index"),
              );
            }),
      ),
      floatingActionButton: _isShowFloatingButton ?  FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          _controller.animateTo(
              0, duration: Duration(seconds: 1), curve: Curves.easeIn);
        },
      ) : null,
    );

  }
}

