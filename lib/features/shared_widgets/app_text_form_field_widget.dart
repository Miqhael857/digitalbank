// ignore_for_file: prefer_const_constructors

import 'package:digbank/core/app_colors.dart';
import 'package:flutter/material.dart';

class AppCustomTextFormField extends StatelessWidget {
  final TextEditingController? ctrl;
  final String hintText;
  final EdgeInsets margin;
  final Color hintcolor;
  final TextInputType keyboardType;
  final double fontSize;
  final Alignment alignment;
  final ValueChanged<String?>? onSaved;
  final String? Function(String?)? validator;
  final Color color;
  const AppCustomTextFormField({
    Key? key,
    this.hintcolor = Colors.black,
    required this.hintText,
    this.fontSize = 16,
    this.onSaved,
    this.validator,
    this.ctrl,
    required this.margin,
    this.alignment = Alignment.center,
    this.keyboardType = TextInputType.name,
    TextEditingController? controller,
    this.color = greenColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      alignment: alignment,
      child: TextFormField(
        controller: ctrl,
        keyboardType: keyboardType,
        onSaved: onSaved,
        validator: validator,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: color),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: fontSize,
              color: hintcolor,
            ),
            fillColor: Colors.white),
      ),
    );
  }
}
