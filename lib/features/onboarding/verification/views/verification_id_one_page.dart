import 'dart:io';

import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/verification/views/id_capture_one.dart';
import 'package:digbank/features/onboarding/verification/views/widget/select_photo_btn.dart';

import 'package:digbank/features/onboarding/widgets/onboarding_icon_widget.dart';
import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_splash_image_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gap/gap.dart';

import 'verification_image_page.dart';

class VerificationIdOnePage extends StatefulWidget {
  final File image;
  const VerificationIdOnePage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  State<VerificationIdOnePage> createState() => _VerificationIdOnePageState();
}

class _VerificationIdOnePageState extends State<VerificationIdOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: AppSplashImage()),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 124, 0),
                    child: OnboardingIcon(
                      size: 15,
                      color: whiteColor,
                      icon: const Icon(Icons.arrow_back_ios),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (c) => const VerificationImagePage(),
                          ),
                        );
                      },
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Padding(
                    padding: EdgeInsets.only(left: 150.0),
                    child: AppTextWidget(
                      text: 'Preview',
                      fontSize: 24,
                      color: whiteColor,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  const Gap(16),
                  Center(
                    child: ClipOval(
                      child: Image.file(
                        widget.image,
                        width: 212.w,
                        height: 212.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(35),
                  SelectPhoto(
                    text: 'Take another',
                    margin: EdgeInsets.zero,
                    borderRadius: BorderRadius.circular(0),
                    color: Colors.transparent,
                    textColor: whiteColor,
                    fontSize: 18,
                  ),
                  const Spacer(flex: 2),
                  const Padding(
                    padding: EdgeInsets.only(left: 55.0),
                    child: AppTextWidget(
                      text: 'Final task! Click the button below for ID\n'
                          'card verification.',
                      fontSize: 14,
                      color: Color(0xffB2DAAC),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  const Gap(20),
                  AppPrimaryBtnWidget(
                    textColor: greenColor,
                    color: lightGreenColor,
                    borderRadius: BorderRadius.circular(12),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (c) => const IdCaptureOne(),
                        ),
                      );
                    },
                    text: 'Proceed to ID Card',
                    margin: const EdgeInsets.fromLTRB(48, 0, 40, 0),
                  ),
                  const Gap(12),
                  const Padding(
                    padding: EdgeInsets.only(left: 150.0),
                    child: AppTextWidget(
                      text: 'Skip for now',
                      fontSize: 14,
                      color: Color(0xffB2DAAC),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  const Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
