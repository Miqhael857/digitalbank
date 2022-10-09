import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/verification/views/verification_otp_code.dart';
import 'package:digbank/features/onboarding/verification/views/widget/verification_text_field.dart';
import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class VerificationEmailPage extends StatelessWidget {
  const VerificationEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9EFE5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 34),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(147),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 150.0, 0),
                  child: AppTextWidget(
                    text: 'Email verification',
                    color: greenColor,
                    fontSize: 24.sp,
                  ),
                ),
                const Gap(3),
                Padding(
                  padding: const EdgeInsets.only(right: 105.0),
                  child: AppTextWidget(
                    text: 'Verify your email address.\n'
                        'An OTP code will be sent to your\n'
                        'email.',
                    color: lightGreyColor,
                    fontSize: 16.sp,
                  ),
                ),
                const Gap(90),
                const VerificationTextField(),
                const Gap(5.12),
                Padding(
                  padding: const EdgeInsets.only(left: 165),
                  child: AppTextWidget(
                    text: 'Email address',
                    color: greenColor,
                    fontSize: 16.sp,
                  ),
                ),
                const Gap(200),
                AppPrimaryBtnWidget(
                  color: greenColor,
                  borderRadius: BorderRadius.circular(12),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (c) => const VerificationOtpPage()),
                    );
                  },
                  text: 'Validate',
                  margin: const EdgeInsets.fromLTRB(7.33, 0, 37, 0),
                  textColor: whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
