import 'dart:math';
import 'package:demo/day09/viewmodel/counter_view_model.dart';
import 'package:demo/day09/viewmodel/initlaize_provider.dart';
import 'package:demo/day09/viewmodel/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/**
 * 1.创建自己需要共享的数据
 * 2.在应用顶层ChangeNotifierProvider
 * 3.在其他位置共享数据
 * 4.provider.of 所在Widget 重新 build
 * 5.Consumer 只会build 内部方法 (相对推荐)
 * 6.Selector
 */

void main() {
  runApp(
    MultiProvider(
        child: MYApp(),
        providers: providers)
  );


 //      ChangeNotifierProvider(
//        create: (ctx) => XYCounterViewModel(),
//        child: MYApp(),
//      )
}

class MYApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: XYHomeContent());
  }
}

class XYHomeContent extends StatefulWidget {
  @override
  _XYHomeContentState createState() => _XYHomeContentState();
}

class _XYHomeContentState extends State<XYHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("provider"),),
      body: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MYWidget(),
          MYWidget02()
        ],)
      ),
      floatingActionButton: Selector<XYCounterViewModel , XYCounterViewModel>(
        selector: (ctx , counterVM) => counterVM,
        shouldRebuild: (prev , next) => false, //要不要重新构建
        child: Icon(Icons.add),  //避免Icon 重新构建
        builder: (ctx , counterVM , child){
          print("FloatingActionButton build");
          return FloatingActionButton(
            child: child,
            onPressed: () {
              setState(() {
                counterVM.counter++;
              });
            },
          );
        },
      )
    );
  }
}

class MYWidget extends StatefulWidget {
  @override
  _MYWidgetState createState() => _MYWidgetState();
}

class _MYWidgetState extends State<MYWidget> {

  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<XYCounterViewModel>(context).counter;
    print("Provider.of 重新 build");
    return Card(child: Text("xiaolemon ❤ + ${counter}" , style:  TextStyle( fontSize: 28),),);
  }
}


class MYWidget02 extends StatefulWidget {
  @override
  _MYWidget02State createState() => _MYWidget02State();
}

class _MYWidget02State extends State<MYWidget02> {
  @override
  Widget build(BuildContext context) {
    print("Consumer build");
    return Consumer2<XYUserViewModel , XYCounterViewModel>(builder: (ctx , userVM , counterVM, child){
      return Card(child: Text("${userVM.user.nickname} ❤ + ${counterVM.counter}",
            style: TextStyle(fontSize: 28),),);

    });

//      Consumer<XYCounterViewModel>(
//        builder: (ctx, counterVM, child) {
//          print("Consumer 重新 build");
//          return Card(child: Text("xiaolemon ❤ + ${counterVM.counter}",
//            style: TextStyle(fontSize: 28),),);
//        });
  }
}
