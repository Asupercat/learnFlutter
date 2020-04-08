import 'package:flutter/material.dart';

class DBDashLine extends StatelessWidget {
  final Axis axis;
  final double dashWidth;
  final double dashHeight;
  final int count;
  final Color color;

  DBDashLine({
    this.axis = Axis.horizontal,
    this.dashWidth = 1,
    this.dashHeight = 1,
    this.count = 10,
    this.color = Colors.grey
  });

  @override
  Widget build(BuildContext context) {
    var max;
    return Flex(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      direction: axis,
      children: List.generate(count, (_) {
        return SizedBox(
          width: dashWidth,
          height: dashHeight,
          child: DecoratedBox(decoration: BoxDecoration(color: color)),
        );
      }),
    );
  }
}
