import 'dart:math';

import 'package:flutter/material.dart';

class CustomScrollViewDemo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 240,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("ListView"),
            background: Image.asset("assets/images/WechatIMG13276.jpeg" , fit: BoxFit.fitHeight,),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(8),
          sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx, int index) {
                  return Container(
                    color: Color.fromARGB(
                        255, Random().nextInt(256), Random().nextInt(256),
                        Random().nextInt(256)),
                    child: Text("$index",
                    ),
                  );
                },
                childCount: 20,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8
              )),
        )
      ],
    );
  }
}
