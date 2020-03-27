import 'package:flutter/material.dart';

class IconExtensionDemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Icon字体图标 和图片做图标的区别
    // 1.字体图标 矢量图 放大不会失真
    // 2.字体可以设置颜色
    // 3.图标很多的时候 占据空间更小
    // Icon(Icons.favorite, size: 300, color: Colors.red,)
    return Icon(IconData(0xe87d, fontFamily: 'MaterialIcons'), size: 300, color: Colors.red);
  }
}