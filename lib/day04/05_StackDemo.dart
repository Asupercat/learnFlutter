
import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /**
     * Stack 默认为最大Widget大小
     * alignment : 从上面位置开始排布所以子元素
     * fit : expand 尽可能大拉伸子元素
     * overflow : 超出部分如何处理
     *
     * Positioned : 调整子元素位置
     */
    return Stack(
        overflow: Overflow.clip,
        alignment: AlignmentDirectional.bottomCenter,
//        fit: StackFit.expand,
        children: <Widget>[ // Z轴
          Image.asset("assets/images/WechatIMG13276.jpeg"),
          Positioned(
            left: 0,
            right: 0,
            child: Container(
//                width: double.infinity,
                color: Colors.green,
                child: Text("淘宝")
            ),
          )
        ]
    );
  }
}

