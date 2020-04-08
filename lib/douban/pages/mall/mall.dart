import 'package:flutter/material.dart';

class DBMallPage extends StatefulWidget {
  @override
  _DBMallPageState createState() => _DBMallPageState();
}

class _DBMallPageState extends State<DBMallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("集市"),),
      body: Text("mall"),);
  }
}
