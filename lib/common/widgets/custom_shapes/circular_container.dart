import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class QCCircularContainer extends StatelessWidget {
  const QCCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = QCColors.white,
  });
  final Widget? child;
  final double? width, height;
  final double radius, padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
