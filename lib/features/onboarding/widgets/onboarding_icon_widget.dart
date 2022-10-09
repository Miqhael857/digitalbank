import 'package:digbank/core/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingIcon extends StatelessWidget {
  final double size;
  final Color color;
  final Icon icon;
  final VoidCallback onTap;
  const OnboardingIcon(
      {Key? key,
      required this.size,
      this.color = whiteColor,
      required this.onTap,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        iconSize: size,
        icon: icon,
        onPressed: onTap,
        color: color,
      ),
    );
  }
}
