import 'package:flutter/material.dart';

class AppCircleButton extends StatelessWidget {
  const AppCircleButton({Key? key,
  required this.child,
    this.color,
    this.ontap,
    this.width = 60,
  }) : super(key: key);
  final Widget child;
  final Color? color;
  final double width;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      child: InkWell(child: child),
    );
  }
}
