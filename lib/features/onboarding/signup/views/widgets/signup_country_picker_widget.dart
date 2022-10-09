import 'package:digbank/features/onboarding/signup/views/widgets/signup_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupCountryPickerWidget extends StatefulWidget {
  const SignupCountryPickerWidget({Key? key}) : super(key: key);

  @override
  State<SignupCountryPickerWidget> createState() =>
      _SignupCountryPickerWidgetState();
}

class _SignupCountryPickerWidgetState extends State<SignupCountryPickerWidget> {
  @override
  Widget build(BuildContext context) {
    return SignupTextFieldWidget(
      hintText: '8099990000',
      hintcolor: const Color(0xff6A6D81),
      alignment: Alignment.topLeft,
      keyboardType: TextInputType.number,
      fontSize: 18.sp,
      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
    );
  }
}
