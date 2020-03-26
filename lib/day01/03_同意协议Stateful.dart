

import 'package:flutter/material.dart';

void main() => runApp(MYApp());

class MYApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
          title: Text("天下第一"),
        ),
        body: ContentBody()
    );
  }
}

//Stateful不能创建状态 需要创建一个单独的类来维护状态
class ContentBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContentBodyState();
  }

}

class ContentBodyState extends State<ContentBody> {

  var flag = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(value: flag, onChanged: (value){
//            print(value);
            setState(() {
              flag = value;
            });
          }),
          Text("表示同意",
            textAlign: TextAlign.left,)
        ],
      ),
    );
  }
}