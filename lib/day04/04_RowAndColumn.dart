import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Row Column 集成字Flex
    //Axis.vertical  : Column
    //Axis.horizontal : Row
    //Main Axis \ Cross Axis
    /** Row特点:
     * - 水平方向尽可能占据比较大的空间
     *  *水平防线也希望包裹内容, minAxisSize = min
     * - 垂直方向包裹内容
     *
     * - MainAxisAlignment
     * - start : 主轴开始的位置开始挨个摆放元素
     * - end : 主轴结束的位置开始挨个摆放元素
     * - center : 主轴中心的位置开始挨个摆放元素
     * - spaceBetween : 左右为0 中间平分
     * - spaceAround : 左右是中间间距的一半 中间平分
     * - spaceEvenly : 左中右 中间平分
     *
     * - CrossAxisAlignment
     * - start : 交叉轴开始的位置开始挨个摆放元素
     * - end : 交叉轴结束的位置开始挨个摆放元素
     * - center : 交叉轴中心的位置开始挨个摆放元素 //默认
     * - baseline : 基线对齐 %&$^$^%*&(
     * - stretch :  拉伸
     * - values :
     */
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(width: 50 ,height: 50, color: Colors.blue),
        Container(width: 70 ,height: 70, color: Colors.green),
        Container(width: 90 ,height: 90, color: Colors.blue),
        Container(width: 110 ,height: 110, color: Colors.green),
      ],
    );

  }
}

class ExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        /**
         * Expanded (更多)
         * - flex
         * Flexible 中的属性
         * - fit
         */
        Expanded(
            flex: 1,
//          fit: FlexFit.tight,
            child: Container(height: 50, color: Colors.blue)
        ),
        Flexible(
            flex: 2,
//            fit: FlexFit.tight,
            child: Container(width: 100, height: 70, color: Colors.green))
        ,
        Container(width: 90, height: 90, color: Colors.blue),
        Container(width: 110 ,height: 110, color: Colors.green),
      ],
    );

  }
}
