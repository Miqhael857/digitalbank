import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppPrimaryBtnWidget extends StatelessWidget {
  final String text;
  final BorderRadius borderRadius;
  final Color color;
  final Color textColor;
  final double fontSize;
  final VoidCallback onPressed;
  final EdgeInsets margin;
  const AppPrimaryBtnWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.margin,
    required this.borderRadius,
    required this.color,
    this.textColor = greenColor,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      margin: margin,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        onPressed: onPressed,
        child: AppTextWidget(
          alignment: Alignment.center,
          text: text,
          fontSize: fontSize,
          color: textColor,
        ),
      ),
    );
  }
}
