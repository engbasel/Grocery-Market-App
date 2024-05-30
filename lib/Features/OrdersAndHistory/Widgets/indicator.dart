import 'package:flutter/material.dart';

class LinePageIndicator extends StatelessWidget {
  final PageController controller;
  final int itemCount;
  final double lineHeight;
  final double lineWidth;
  final double spacing;
  final Color activeColor;
  final Color inactiveColor;

  const LinePageIndicator({
    super.key,
    required this.controller,
    required this.itemCount,
    this.lineHeight = 4.0,
    this.lineWidth = 30.0,
    this.spacing = 8.0,
    this.activeColor = Colors.green,
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        double page = controller.page ?? controller.initialPage.toDouble();
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(itemCount, (index) {
            double t = (page - index).abs().clamp(0.0, 1.0);
            double width = lineWidth - (lineWidth - spacing) * t;
            return Container(
              margin: EdgeInsets.symmetric(horizontal: spacing / 2),
              height: lineHeight,
              width: width,
              color: t == 0 ? activeColor : inactiveColor,
            );
          }),
        );
      },
    );
  }
}
