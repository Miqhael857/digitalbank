import 'package:flutter/material.dart';

class OnboardingSkeletonWidget extends StatelessWidget {
  final Widget body;
  final Color color;
  final Color backgroundColor;
  final String text;
  final double fontSize;
  final VoidCallback onTap;
  const OnboardingSkeletonWidget({
    Key? key,
    required this.body,
    this.color = Colors.black,
    this.text = '',
    required this.onTap,
    this.fontSize = 16,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          leading: GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Icon(
                Icons.arrow_back_ios,
                color: color,
                size: 20,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(child: body));
  }
}
