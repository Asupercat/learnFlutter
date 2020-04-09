import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MYApp());

class MYApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: XYHomeContent());
  }
}

class XYInheritedWidget extends InheritedWidget {
  //1.共享参数
  final int counter;
  //2.构造方法
  XYInheritedWidget({this.counter , Widget child}) : super(child : child);

  static XYInheritedWidget of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}

class XYHomeContent extends StatefulWidget {
  @override
  _XYHomeContentState createState() => _XYHomeContentState();
}

class _XYHomeContentState extends State<XYHomeContent> {
  int _counter = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("inheritied"),),
      body: XYInheritedWidget(counter: _counter,
          child: MYWidget()
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}

class MYWidget extends StatefulWidget {
  @override
  _MYWidgetState createState() => _MYWidgetState();
}

class _MYWidgetState extends State<MYWidget> {

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    int counter = XYInheritedWidget.of(context).counter;

    return Card(child: Text("xiaolemon ❤ + ${counter}" , style:  TextStyle( fontSize: 28),),);
  }
}
