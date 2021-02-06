import 'package:flutter/material.dart';
import 'package:vectorize/colors.dart';

class CustomPageRoute<T> extends PageRoute<T> {
  final Widget child;

  CustomPageRoute(this.child);

  @override
  Color get barrierColor => CustomColors.transparent;

  @override
  String get barrierLabel => child.toString();

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 300);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
