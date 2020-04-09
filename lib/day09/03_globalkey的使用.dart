import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: XYHomePage(),
    );
  }
}

class XYHomePage extends StatelessWidget {
  final String title = "列表测试";
  final GlobalKey<_XYHomeContentState> homeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: XYHomeContent(key: homeKey),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.gesture),
        onPressed: () {
          print(homeKey.currentState.message);
          print(homeKey.currentState.widget.name);
          homeKey.currentState.test();
        },
      ),
    );
  }
}

class XYHomeContent extends StatefulWidget {
  final String name = "123";

  XYHomeContent({Key key}): super(key: key);

  @override
  _XYHomeContentState createState() => _XYHomeContentState();
}

class _XYHomeContentState extends State<XYHomeContent> {
  final String message = "123";

  void test() {
    print("testtesttest");
  }

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}

