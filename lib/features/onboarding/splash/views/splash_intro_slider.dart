import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/landing/views/landing_signup_page.dart';
import 'package:digbank/features/onboarding/splash/views/splash_onboarding%20_three.dart';
import 'package:digbank/features/onboarding/splash/views/splash_onboarding%20_two.dart';
import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'splash_onboarding _one.dart';

class SplashIntroSlider extends StatefulWidget {
  const SplashIntroSlider({Key? key}) : super(key: key);

  @override
  State<SplashIntroSlider> createState() => _SplashIntroSliderState();
}

class _SplashIntroSliderState extends State<SplashIntroSlider> {
  final PageController _controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: const [
            SplashOnboardingOne(),
            SplashOnboardingTwo(),
            SplashOnboardingThree(),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 167),
              child: Container(
                alignment: const Alignment(0, 0.71),
                child: Row(
                  children: [
                    SmoothPageIndicator(
                      effect: ExpandingDotsEffect(
                        activeDotColor: whiteColor,
                        dotHeight: 5.h,
                        radius: 2.5.r,
                        dotColor: whiteColor.withOpacity(0.2),
                        dotWidth: 8.w,
                        spacing: 5,
                      ),
                      controller: _controller,
                      count: 3,
                    ),
                  ],
                ),
              ),
            ),
            const Gap(55),
            isLastPage
                ? AppPrimaryBtnWidget(
                    color: lightGreenColor,
                    borderRadius: BorderRadius.circular(12),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (c) => const LandingSignupPage()));
                    },
                    text: 'Get Started',
                    margin: const EdgeInsets.fromLTRB(48, 0, 40, 38),
                  )
                : GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(260, 0, 0, 38),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: whiteColor.withOpacity(0.3),
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ]),
    );
  }
}
