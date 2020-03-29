import 'package:flutter/material.dart';

class ListViewDemo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
//      reverse: true,
//        primary: false,
        itemExtent: 66, //高度
        children: List.generate(100, (index) {
          return ListTile(
            leading: Icon(Icons.people),
            trailing: Icon(Icons.dehaze),
            title: Text("联系人${index + 1}"),
            subtitle: Text("电话号码:123"),
          );
        })
    );
  }
}

class ListViewDemo02 extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemExtent: 60,
        itemBuilder: (BuildContext ctx, int index) {
          return Text("data : $index");
        });
  }
}

class ListViewDemo03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext ctx, int index) {
        return Text(
          "data : $index",
          style: TextStyle(fontSize: 28),
        );
      },
      separatorBuilder: (BuildContext ctx, int index) {
        return Divider(
          height: 40, // Item 高度
          thickness: 2, // 分割线高度
          color: Colors.red,
          indent: 10,
          endIndent: 10,
        );
      },
      itemCount: 10,
    );
  }
}
