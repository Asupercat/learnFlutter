import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MYApp());

class MYApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
//        debugShowCheckedModeBanner: false,
        home: HomePage()
    );
  }

}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("基础Widget"),
      ),
      body: HomeContent(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
      ),
    );
  }
}

//1.Widget需要依赖State中的状态
//2.在Flutter运行中 Widget是不断创建销毁的 当状态改变时不希望重新生成一个新的State

//Widget 不加 _ 暴露给别人
class HomeContent extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

//内部有Widget属性 指向⬆️
class _HomePageState extends State<HomeContent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ButtonsDemo(),
    );
  }

}

class ButtonsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
            child: Text("RaisedButton"),
            onPressed: () {
              print("必传参数");
            }),

        FlatButton(
            onPressed: () => print("FlatButton"),
            child: Text("FlatButton"),
            color: Colors.amber),

        OutlineButton(
          onPressed: () => print("OutlineButton"),
          child: Text("FlatButton"),
          color: Colors.blue,
        ),

        FloatingActionButton(
          child: Icon(Icons.add),
        ),

        //自定义
        FlatButton(
            color: Colors.pinkAccent,
            shape: RoundedRectangleBorder( //圆角
              borderRadius: BorderRadius.circular(8),
            ),
            onPressed: () => print("自定义"),
            child: Row( //默认占据整行
              mainAxisSize: MainAxisSize.min, // 设置Row Size属性
              children: <Widget>[
                Icon(Icons.favorite),
                Text("收藏" ),

              ],
            )
        )

      ],
    );
  }
}
