import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign textAlign;
  final Color color;
  final Alignment alignment;

  const SignInTextWidget(
      {Key? key,
      this.text = '',
      this.fontSize = 16,
      this.color = Colors.black,
      this.alignment = Alignment.center,
      required this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontSize: fontSize.sp,
        ),
      ),
    );
  }
}
