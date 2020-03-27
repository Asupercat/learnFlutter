
import 'package:flutter/material.dart';


class HomeContent extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

//内部有Widget属性 指向⬆️
class _HomePageState extends State<HomeContent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //2.Button尺寸有默认值 ButtonTheme 设置尺寸
        ButtonTheme(
          minWidth: 20,
          height: 20,
          child: FlatButton(
            //1.默认情况下 Button 上下有一定的间距\
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //3.去除文字内边距
            padding: EdgeInsets.all(0),
            color: Colors.blue,
            onPressed: () {},
            child: Text("FlatButton"),
            textColor: Colors.white,
          ),
        ),
        FlatButton(
          color: Colors.blue,
          onPressed: () {},
//          child: Text("FlatButton2"),
          textColor: Colors.white,
        )
      ],
    );
  }

}

