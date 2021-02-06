import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vectorize/colors.dart';

class GlassCard extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;

  const GlassCard({Key key, @required this.height, @required this.width, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: height,
          width: width,
          child: child,
          decoration: BoxDecoration(
            color: CustomColors.glassColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: CustomColors.borderColor),
          ),
        ),
      ),
    );
  }
}
