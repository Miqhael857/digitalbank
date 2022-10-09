import 'dart:io';

import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/signup/views/signup_otp_page.dart';
import 'package:digbank/features/onboarding/verification/views/widget/select_photo_btn.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_skeleton_widgets.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class VerificationImagePage extends StatefulWidget {
  const VerificationImagePage({
    Key? key,
  }) : super(key: key);

  @override
  State<VerificationImagePage> createState() => _VerificationImagePageState();
}

class _VerificationImagePageState extends State<VerificationImagePage> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return OnboardingSkeletonWidget(
      backgroundColor: const Color(0xffE9EFE5),
      color: greenColor,
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (c) => const SignupOtpPage(),
          ),
        );
      },
      body: Scaffold(
        backgroundColor: const Color(0xffE9EFE5),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(35.25),
                AppTextWidget(
                  text: 'Face Capturing',
                  color: greenColor,
                  fontSize: 24.sp,
                ),
                const Gap(4),
                AppTextWidget(
                  text: 'Take a snapshot',
                  color: lightGreyColor,
                  fontSize: 16.sp,
                ),
                const Gap(25),
                Image.asset(
                  'assets/images/image.png',
                  height: 374.h,
                  width: 170.83.w,
                ),
                const Gap(65),
                SelectPhoto(
                  color: greenColor,
                  borderRadius: BorderRadius.circular(12),
                  text: 'Take snapshot',
                  margin: const EdgeInsets.fromLTRB(36, 0, 28, 0),
                  textColor: whiteColor,
                  fontSize: 16,
                ),
                const Gap(10),
                AppTextWidget(
                  text: 'Skip for now',
                  color: lightGreyColor,
                  fontSize: 16.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
