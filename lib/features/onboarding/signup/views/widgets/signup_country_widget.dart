import 'package:digbank/features/onboarding/signup/views/widgets/signup_text_field_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupCountryWidget extends StatefulWidget {
  const SignupCountryWidget({Key? key}) : super(key: key);

  @override
  State<SignupCountryWidget> createState() => _SignupCountryWidgetState();
}

class _SignupCountryWidgetState extends State<SignupCountryWidget> {
  @override
  Widget build(BuildContext context) {
    return SignupTextFieldTwo(
      hintText: '8099990000',
      hintcolor: const Color(0xff6A6D81),
      alignment: Alignment.topLeft,
      keyboardType: TextInputType.number,
      fontSize: 18.sp,
    );
  }
}
