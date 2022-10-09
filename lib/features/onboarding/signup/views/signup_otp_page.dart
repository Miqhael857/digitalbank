import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/signup/views/signup_bvn_page.dart';
import 'package:digbank/features/onboarding/verification/views/verification_image_page.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_skeleton_widgets.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SignupOtpPage extends StatelessWidget {
  const SignupOtpPage({Key? key}) : super(key: key);

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
            builder: (c) => const SignupBvnPage(),
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
                    padding: const EdgeInsets.fromLTRB(0, 0, 222, 0),
                    child: AppTextWidget(
                      text: 'OTP Code',
                      color: greenColor,
                      fontSize: 24.sp,
                    ),
                  ),
                  const Gap(6),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 0, 50, 0),
                    child: AppTextWidget(
                      text: "You're almost done! Key in the 6\n"
                          "digit code we just sent to 23408064758899.",
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (c) => const VerificationImagePage()),
                          );
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
