
import 'package:demo/douban/pages/home/home_content.dart';
import 'package:flutter/material.dart';


class DBHomePage extends StatefulWidget {
  @override
  _DBHomePageState createState() => _DBHomePageState();
}

class _DBHomePageState extends State<DBHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("首页"),),
      body: DBHomeContent()
    );
  }
}
