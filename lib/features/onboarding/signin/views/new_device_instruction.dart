import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/signin/views/signin_otp_page.dart';
import 'package:digbank/features/onboarding/signin/views/widgets/signin_text_widget.dart';

import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_splash_image_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class NewDeviceInstruction extends StatelessWidget {
  const NewDeviceInstruction({Key? key}) : super(key: key);

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
              const Gap(267),
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
            bottom: 101,
            left: 13,
            child: Container(
              height: 609.h,
              width: 390.h,
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    padding: EdgeInsets.only(left: 68.5),
                    child: SignInTextWidget(
                      text: 'It appears that you are \n'
                          'using a new device.',
                      fontSize: 24,
                      color: Color(0xff2A2536),
                      alignment: Alignment.topLeft,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(21),
                  const Padding(
                    padding: EdgeInsets.only(left: 135.0),
                    child: Center(
                      child: SignInTextWidget(
                        text: 'Instructions',
                        fontSize: 18,
                        color: greenColor,
                        alignment: Alignment.topLeft,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const Gap(21),
                  const Padding(
                    padding: EdgeInsets.only(left: 77.5),
                    child: SignInTextWidget(
                      text: 'Go to your old device under\n'
                          'preferences on your profile page:',
                      fontSize: 14,
                      color: Color(0xff000000),
                      alignment: Alignment.topLeft,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(21),
                  const Padding(
                    padding: EdgeInsets.only(left: 77.5),
                    child: SignInTextWidget(
                      text: '1.Tap on Transfer device and copy\n'
                          'copy the generated code.',
                      fontSize: 14,
                      color: Color(0xff000000),
                      alignment: Alignment.topLeft,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(21),
                  const Padding(
                    padding: EdgeInsets.only(left: 77.5),
                    child: SignInTextWidget(
                      text: '2.Come back to this device tap on\n'
                          'the Enter code button below and\n'
                          'past the code.',
                      fontSize: 14,
                      color: Color(0xff000000),
                      alignment: Alignment.topLeft,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(70),
                  AppPrimaryBtnWidget(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(12),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (c) => const SigninOtpPage(),
                        ),
                      );
                    },
                    text: 'Enter code',
                    margin: const EdgeInsets.fromLTRB(35.33, 0, 31, 0),
                    textColor: whiteColor,
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
