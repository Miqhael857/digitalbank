import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'widgets/splash_onboarding_two_image.dart';

class SplashOnboardingTwo extends StatelessWidget {
  const SplashOnboardingTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: SplashOnboardingTwoImage()),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(310),
                  SvgPicture.asset(
                    'assets/svg/splash_screen_logo.svg',
                  ),
                  const Gap(107.86),
                  const AppTextWidget(
                    text: 'Fund your account and\n'
                        'make safe payments',
                    fontSize: 20,
                    color: whiteColor,
                    alignment: Alignment.topLeft,
                  ),
                  const Gap(14),
                  const AppTextWidget(
                    text: 'Safely send make bills payment and transfer\n'
                        'money to friends and family',
                    fontSize: 14,
                    color: whiteColor,
                    alignment: Alignment.topLeft,
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
