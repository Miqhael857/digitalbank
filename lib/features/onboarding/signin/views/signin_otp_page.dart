import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/signin/views/new_device_instruction.dart';
import 'package:digbank/features/onboarding/signup/views/signup_bvn_page.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_skeleton_widgets.dart';
import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SigninOtpPage extends StatelessWidget {
  const SigninOtpPage({Key? key}) : super(key: key);

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
            builder: (c) => const NewDeviceInstruction(),
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
                    padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
                    child: AppTextWidget(
                      text: 'Device activation',
                      color: greenColor,
                      fontSize: 24.sp,
                    ),
                  ),
                  const Gap(6),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 105, 0),
                    child: AppTextWidget(
                      text: "Input code below and tap 'Done'\n"
                          "button.",
                      color: lightGreyColor,
                      fontSize: 16.sp,
                    ),
                  ),
                  const Gap(72),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(62, 0, 96.0, 0),
                    child: PinCodeTextField(
                      obscureText: true,
                      cursorColor: greenColor,
                      appContext: context,
                      length: 4,
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
                  const Gap(75),
                  AppPrimaryBtnWidget(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(12),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (c) => const SignupBvnPage(),
                        ),
                      );
                    },
                    text: 'Done',
                    margin: const EdgeInsets.fromLTRB(31, 0, 33, 0),
                    textColor: whiteColor,
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
