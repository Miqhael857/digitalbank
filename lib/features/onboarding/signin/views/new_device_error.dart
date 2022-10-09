import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/signin/views/new_device_instruction.dart';

import 'package:digbank/features/shared_widgets/app_splash_image_widget.dart';

import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class NewDeviceError extends StatelessWidget {
  const NewDeviceError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: AppSplashImage()),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(106),
              const Padding(
                padding: EdgeInsets.only(left: 150.0),
                child: AppTextWidget(
                  text: 'Hello,',
                  fontSize: 32,
                  color: whiteColor,
                  alignment: Alignment.topLeft,
                ),
              ),
              const Gap(19),
              const Padding(
                padding: EdgeInsets.only(left: 33.0),
                child: AppTextWidget(
                  text: "Let's start with your email address, We\n"
                      "advise that you use the email logged\n"
                      "in on your phone.",
                  fontSize: 18,
                  color: whiteColor,
                  alignment: Alignment.topLeft,
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xffE9EFE5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 180,
            left: 13,
            child: Container(
              height: 416.h,
              width: 370.h,
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Gap(25),
                  SvgPicture.asset(
                    'assets/svg/phone_error.svg',
                    height: 67.98.h,
                    width: 63.5,
                  ),
                  const Gap(21),
                  const Padding(
                    padding: EdgeInsets.only(left: 100.0),
                    child: AppTextWidget(
                      text: 'Invalid Device',
                      fontSize: 24,
                      color: Color(0xff2A2536),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  const Gap(21),
                  const Padding(
                    padding: EdgeInsets.only(left: 70.0),
                    child: AppTextWidget(
                      text: 'Did you change your device?',
                      fontSize: 18,
                      color: lightGreyColor,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  const Gap(21),
                  Padding(
                    padding: const EdgeInsets.only(left: 65.0),
                    child: Row(
                      children: [
                        const AppTextWidget(
                          text: 'If yes.',
                          fontSize: 18,
                          color: lightGreyColor,
                          alignment: Alignment.topLeft,
                        ),
                        const Gap(5),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (c) => const NewDeviceInstruction(),
                              ),
                            );
                          },
                          child: const AppTextWidget(
                            text: 'Tap here for instruction.',
                            fontSize: 18,
                            color: greenColor,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(21),
                  Padding(
                    padding: const EdgeInsets.only(left: 90.0),
                    child: Row(
                      children: const [
                        AppTextWidget(
                          text: 'Need help?',
                          fontSize: 18,
                          color: lightGreyColor,
                          alignment: Alignment.topLeft,
                        ),
                        Gap(5),
                        AppTextWidget(
                          text: 'Contact us',
                          fontSize: 18,
                          color: greenColor,
                          alignment: Alignment.topLeft,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
