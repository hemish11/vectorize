import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vectorize/colors.dart';
import 'package:vectorize/components/glass_card.dart';

class Background extends StatelessWidget {
  final Widget child;
  final bool showGlass;

  const Background({Key? key, required this.child, this.showGlass = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: size.width * 0.8,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(size.width * 0.8)),
                color: CustomColors.color2,
              ),
            ),
            Transform.translate(
              offset: Offset(0, size.height * 0.5),
              child: Container(
                height: size.width + size.height * 0.1,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(size.width)),
                  color: CustomColors.color3,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(size.width * 0.4, size.height * 0.6),
              child: Container(
                height: size.width * 1.5,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(size.width * 0.9, size.height * 0.75)),
                  color: CustomColors.color1,
                ),
              ),
            ),
            if (showGlass)
              Transform(
                transform: Matrix4.identity()
                  ..translate(size.width * 0.1, size.height * 0.7)
                  ..rotateZ(-pi / 4),
                child: GlassCard(
                  height: size.width * 0.4,
                  width: size.width * 1.2,
                  child: SizedBox(),
                ),
              ),
            Container(height: size.height, width: size.width, child: child),
          ],
        ),
      ),
    );
  }
}
