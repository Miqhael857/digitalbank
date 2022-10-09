import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/password/views/password_reset_page.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_skeleton_widgets.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PasswordOtpPage extends StatelessWidget {
  const PasswordOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String requiredNumber = '123456';
    return OnboardingSkeletonWidget(
      backgroundColor: const Color(0xffE9EFE5),
      color: greenColor,
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (c) => const PasswordResetPage(),
          ),
        );
      },
      body: Scaffold(
        backgroundColor: const Color(0xffE9EFE5),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 34),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(82),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 215, 0),
                    child: AppTextWidget(
                      text: 'Reset code',
                      color: greenColor,
                      fontSize: 24.sp,
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 75, 0),
                    child: AppTextWidget(
                      text: 'Key in the 6 digit code we just sent to \n'
                          '08099990000',
                      color: lightGreyColor,
                      fontSize: 16.sp,
                    ),
                  ),
                  const Gap(72),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(17, 0, 48.0, 0),
                    child: PinCodeTextField(
                      obscureText: true,
                      cursorColor: greenColor,
                      appContext: context,
                      length: 6,
                      onChanged: (value) {
                        value;
                      },
                      pinTheme: PinTheme(
                        activeFillColor: greenColor,
                        selectedColor: greenColor,
                        activeColor: greenColor,
                        inactiveColor: greenColor,
                        fieldWidth: 32,
                      ),
                      onCompleted: ((value) {
                        if (value == requiredNumber) {
                          'valid Pin';
                        } else {
                          'invalid Pin';
                        }
                      }),
                    ),
                  ),
                  const Gap(87),
                  Center(
                    child: AppTextWidget(
                      text: 'Resend OTP',
                      color: greenColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
