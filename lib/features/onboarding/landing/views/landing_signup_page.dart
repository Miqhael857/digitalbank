import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/signin/views/signin_page.dart';
import 'package:digbank/features/onboarding/signup/views/signup_page.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_icon_widget.dart';
import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_splash_image_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class LandingSignupPage extends StatelessWidget {
  const LandingSignupPage({Key? key}) : super(key: key);

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
                OnboardingIcon(
                  size: 15,
                  color: whiteColor,
                  icon: const Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Spacer(flex: 1),
                const Padding(
                  padding: EdgeInsets.only(left: 37.0),
                  child: AppTextWidget(
                    text: 'Welcome to',
                    fontSize: 14,
                    color: whiteColor,
                    alignment: Alignment.topLeft,
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.only(left: 55.0),
                  child: SvgPicture.asset(
                    'assets/svg/splash_screen_logo.svg',
                  ),
                ),
                const Gap(46.86),
                const Padding(
                  padding: EdgeInsets.only(left: 55.0),
                  child: AppTextWidget(
                    text: 'Lorem ipsum dolor sit amet, consectetu\n'
                        'r adipiscing elit, sed do eiusmod tempor\n'
                        'incididunt ut labore',
                    fontSize: 14,
                    color: whiteColor,
                    alignment: Alignment.topLeft,
                  ),
                ),
                const Spacer(flex: 5),
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
                  margin: const EdgeInsets.fromLTRB(48, 0, 40, 0),
                ),
                const Gap(10),
                AppPrimaryBtnWidget(
                  color: lightGreenColor,
                  borderRadius: BorderRadius.circular(12),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (c) => const SigninPage(),
                      ),
                    );
                  },
                  text: 'Sign in',
                  margin: const EdgeInsets.fromLTRB(48, 0, 40, 0),
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
