import 'package:flutter/material.dart';

class DBProfilePage extends StatefulWidget {
  @override
  _DBProfilePageState createState() => _DBProfilePageState();
}

class _DBProfilePageState extends State<DBProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("我的"),),
      body: Text("mine"),);
  }
}
