import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class QCCircularContainer extends StatelessWidget {
  const QCCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding,
    this.backgroundColor = QCColors.white,
    this.margin,
    this.showBorder = false,
    this.border,
  });

  final Widget? child;
  final double? width, height;
  final double radius;
  final EdgeInsets? padding;
  final Color backgroundColor;
  final EdgeInsets? margin;
  final bool? showBorder;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder! ? border : null,
      ),
      child: child,
    );
  }
}
