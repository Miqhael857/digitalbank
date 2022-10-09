import 'dart:io';

import 'package:digbank/core/app_colors.dart';

import 'package:digbank/features/onboarding/signup/views/signup_page.dart';
import 'package:digbank/features/onboarding/verification/views/id_capture_one.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_icon_widget.dart';
import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_splash_image_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gap/gap.dart';

class IdCaptureTwo extends StatelessWidget {
  final File image;
  const IdCaptureTwo({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: AppSplashImage()),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: OnboardingIcon(
                    size: 17,
                    color: whiteColor,
                    icon: const Icon(Icons.arrow_back_ios),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (c) => const IdCaptureOne(),
                        ),
                      );
                    },
                  ),
                ),
                const Spacer(flex: 1),
                const Padding(
                  padding: EdgeInsets.only(left: 37),
                  child: AppTextWidget(
                    text: 'Identify Verification',
                    fontSize: 24,
                    color: whiteColor,
                    alignment: Alignment.topLeft,
                  ),
                ),
                const Gap(10),
                const Padding(
                  padding: EdgeInsets.only(left: 37),
                  child: AppTextWidget(
                    text: 'Front of identification card',
                    fontSize: 18,
                    color: Color(0xff9BD7BE),
                    alignment: Alignment.topLeft,
                  ),
                ),
                const Gap(50),
                Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    child: Image.file(
                      image,
                      width: 300.w,
                      height: 170.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Spacer(flex: 6),
                AppPrimaryBtnWidget(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (c) => const SignupPage(),
                      ),
                    );
                  },
                  text: 'I am a new user',
                  margin: const EdgeInsets.fromLTRB(33, 0, 31, 0),
                ),
                const Gap(10),
                const Padding(
                  padding: EdgeInsets.only(left: 128),
                  child: AppTextWidget(
                    text: 'Skip for now',
                    fontSize: 18,
                    color: Color(0xff9BD7BE),
                    alignment: Alignment.topLeft,
                  ),
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
