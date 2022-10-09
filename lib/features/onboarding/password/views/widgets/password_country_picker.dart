import 'package:digbank/features/onboarding/password/views/widgets/password_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordCountryPickerWidget extends StatefulWidget {
  const PasswordCountryPickerWidget({Key? key}) : super(key: key);

  @override
  State<PasswordCountryPickerWidget> createState() =>
      _PasswordCountryPickerWidgetState();
}

class _PasswordCountryPickerWidgetState
    extends State<PasswordCountryPickerWidget> {
  @override
  Widget build(BuildContext context) {
    return PasswordTextFieldWidget(
      hintText: '8099990000',
      hintcolor: const Color(0xff6A6D81),
      alignment: Alignment.topLeft,
      keyboardType: TextInputType.number,
      fontSize: 18.sp,
      margin: const EdgeInsets.fromLTRB(34, 0, 32.33, 0),
    );
  }
}
