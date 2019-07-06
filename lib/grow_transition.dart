import 'package:flutter/material.dart';

class GrowTransition extends StatelessWidget {

  final Widget child;
  final Animation<double> animation;

  GrowTransition({ this.child, this.animation });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Container(
              height: animation.value,
              width: animation.value,
              child: child,
            );
          },
        child: child,
      ),
    );
  }
}
