import 'package:demo/douban/pages/main/main_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(MYApp());

class MYApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
        ),
        home: DBMainPage());
  }
}

