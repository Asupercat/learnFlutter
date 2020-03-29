import 'dart:math';

import 'package:flutter/material.dart';

class GridViewDemo03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 6,
            childAspectRatio: 1,
            mainAxisSpacing: 6
        ),
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
//          width: 50,
//          height: 50,
            color: Color.fromARGB(
                255, Random().nextInt(256), Random().nextInt(256),
                Random().nextInt(256)),
            child: Text("$index",
            ),
          );
        });
  }
}





class GridViewDemo02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 220),
      children:
      List.generate(100, (index) {
        return Container(
//          width: 50,
//          height: 50,
          color: Color.fromARGB(
              255, Random().nextInt(256), Random().nextInt(256),
              Random().nextInt(256)),
          child: Text("$index",
          ),
        );
      }),
    );
  }
}

class GridViewDemo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: .8, // 宽高比
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),
        children: List.generate(100, (index) {
          return Container(
//          width: 50,
//          height: 50,
            color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
            child: Text("$index",
            ),
          );
        }),
      ),
    );
  }

}