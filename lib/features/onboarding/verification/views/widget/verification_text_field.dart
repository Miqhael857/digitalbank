import 'package:digbank/core/app_colors.dart';

import 'package:flutter/material.dart';

class VerificationTextField extends StatelessWidget {
  const VerificationTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(7, 0, 35.33, 0),
      child: TextFormField(
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: greenColor),
          ),
          hintText: 'Enter email',
          hintStyle: TextStyle(color: lightGreyColor, fontSize: 14),
          prefixIcon: Icon(
            Icons.email_outlined,
            color: greenColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}

  // const OnboardingTextField(
  //                 color: greenColor,
  //                 fontSize: 16,
  //                 gap: Gap(6.12),
  //                 hintColor: Color(0xff979797),
  //                 hintText: 
  //                 margin: EdgeInsets.fromLTRB(7.33, 0, 37, 0),
  //                 padding: EdgeInsets.only(left: 160.0),
  //                 text: 'Email address',
  //               ),