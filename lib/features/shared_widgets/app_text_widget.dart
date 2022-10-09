import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Alignment alignment;

  const AppTextWidget(
      {Key? key,
      this.text = '',
      this.fontSize = 16,
      this.color = Colors.black,
      this.alignment = Alignment.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: fontSize.sp),
      ),
    );
  }
}
