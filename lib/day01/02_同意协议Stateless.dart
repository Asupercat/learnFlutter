import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentBody extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(value: false, onChanged: (value){
            print("value");
          }),
          Text("同意协议")
        ],
      ),
    );
  }
}
