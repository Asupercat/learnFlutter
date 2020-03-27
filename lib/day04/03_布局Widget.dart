
import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(width: 10, color: Colors.red),
            borderRadius: BorderRadius.circular(150),
            boxShadow: [
              BoxShadow(color: Colors.yellow, offset: Offset(2, 2),blurRadius: 100 , spreadRadius: 5),
              BoxShadow(color: Colors.blue, offset: Offset(-2, -2),blurRadius: 100 , spreadRadius: 5)
            ]
        ),
        width: 300,
        height: 300,
        alignment: Alignment(1, 1),
        padding: EdgeInsets.only(bottom: 15),
        //子Widget
        margin: EdgeInsets.only(left: 5, top: 5),
        //外部 Container
//        transform: Matrix4.rotationZ(12),
//        color: Colors.blue,  decoration和Color不能同时定义  Color会创建decoration
        child: Text("Matsui Jurina",
            style: TextStyle(color: Colors.white, fontSize: 28))
    );
  }
}

class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding( //SizeBox
//          EdgeInsets.fromLTRB(5, 5, 5, 5)
          padding: const EdgeInsets.only(bottom: 5),
          child: Text("Matsui Jurina", style: TextStyle(color: Colors.green, backgroundColor: Colors.amber ,fontSize: 28)),
        ),
        Text("Matsui Jurina", style: TextStyle(color: Colors.green, backgroundColor: Colors.amber ,fontSize: 28)),
        Text("Matsui Jurina", style: TextStyle(color: Colors.green, backgroundColor: Colors.amber ,fontSize: 28))
      ],
    );
  }
}


class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        widthFactor: 6,
        heightFactor: 7,
        alignment: Alignment(1, 1),
        child: Icon(Icons.favorite));
  }
}
