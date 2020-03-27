

import 'package:flutter/material.dart';

class TextFiledDemo extends StatelessWidget {
  final usernameTEController = TextEditingController();
  final pswTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: usernameTEController,
            decoration: InputDecoration(
                labelText: "username",
                icon: Icon(Icons.favorite),
                hintText: "placeholder",
                border: OutlineInputBorder()
            ),
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              print(value);
            },
          ),
//          Padding(padding: EdgeInsets.all(5)),
          SizedBox(height: 5),
          TextField(
            controller: pswTEController,
            decoration: InputDecoration(
                labelText: "psw",
                icon: Icon(Icons.lock),
                hintText: "placeholder",
                border: null
            ),
          ),
          SizedBox(height: 5,),
          Container(
            width: 100,
            height: 50,
            child: FlatButton(
                color: Colors.amber,
                onPressed: () {
//获取username psw
                  print("username = ${usernameTEController
                      .text} , psw = ${pswTEController.text}");
                },
                child: Text("登录", style: TextStyle(color: Colors.blue),)),
          )
        ],
      ),
    );
  }
}

