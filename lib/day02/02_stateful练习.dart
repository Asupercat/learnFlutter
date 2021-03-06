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
          title: Text("商品列表"),
        ),
        body: HomeContent("传递属性")
    );
  }
}

//1.Widget需要依赖State中的状态
//2.在Flutter运行中 Widget是不断创建销毁的 当状态改变时不希望重新生成一个新的State

//Widget 不加 _ 暴露给别人
class HomeContent extends StatefulWidget {
  String message;

//  this 可以省略
  HomeContent(this.message);
  @override
  _HomePageState createState() => _HomePageState();
}

//内部有Widget属性 指向⬆️
class _HomePageState extends State<HomeContent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),
          Text("当前计数 $_counter" , style: TextStyle(fontSize: 25 , fontStyle: FontStyle.normal),),
          Text("${widget.message}" , style: TextStyle(fontSize: 25 , fontStyle: FontStyle.normal),)
        ],
      ) ,
    );
  }

  Widget _getButtons(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              child: Text("+"),
              onPressed: (){
                setState(() {
                  _counter++;
                });
              }),
          RaisedButton(
              child: Text("-"),
              onPressed: (){
                setState(() {
                  _counter--;
                });
              })
        ]
    );
  }
}

