import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlideFadeTransition extends CustomTransition {
  @override
  Widget buildTransition(
    BuildContext context,
    Curve? curve,
    Alignment? alignment,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    const curveValue = Curves.ease;

    final tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curveValue));
    final offsetAnimation = animation.drive(tween);

    return FadeTransition(
      opacity: animation,
      child: SlideTransition(position: offsetAnimation, child: child),
    );
  }
}
