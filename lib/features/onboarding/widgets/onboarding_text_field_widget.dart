import 'package:digbank/features/shared_widgets/app_text_form_field_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingTextField extends StatelessWidget {
  final String hintText;
  final EdgeInsets margin;
  final Color hintColor;
  final Gap gap;
  final String text;
  final Color color;
  final double fontSize;
  final EdgeInsets padding;
  const OnboardingTextField(
      {Key? key,
      required this.hintText,
      required this.margin,
      required this.hintColor,
      required this.gap,
      required this.text,
      required this.color,
      required this.fontSize,
      required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCustomTextFormField(
          hintText: hintText,
          margin: margin,
          hintcolor: hintColor,
        ),
        gap,
        Padding(
          padding: padding,
          child: AppTextWidget(
            text: text,
            color: color,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
