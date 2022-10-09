import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/landing/views/landing_signup_page.dart';
import 'package:digbank/features/onboarding/signup/views/signup_bvn_page.dart';
import 'package:digbank/features/onboarding/signup/views/widgets/signup_country_picker_widget.dart';
import 'package:digbank/features/onboarding/signup/views/widgets/signup_country_widget.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_icon_widget.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_text_field_widget.dart';
import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9EFE5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: OnboardingIcon(
                  size: 15,
                  color: greenColor,
                  icon: const Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (c) => const LandingSignupPage(),
                      ),
                    );
                  },
                ),
              ),
              const Gap(11),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SvgPicture.asset(
                  'assets/svg/onboarding_one_logo.svg',
                  width: 320.w,
                  height: 84.63.h,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 36.0),
                child: AppTextWidget(
                  text: 'Your Basic info',
                  fontSize: 24,
                  color: greenColor,
                  alignment: Alignment.topLeft,
                ),
              ),
              const Gap(20),
              const Padding(
                padding: EdgeInsets.only(left: 36.0),
                child: AppTextWidget(
                  text: 'Please provide your phone number for\n'
                      'device validation and sms alerts.',
                  fontSize: 14,
                  color: whiteColor,
                  alignment: Alignment.topLeft,
                ),
              ),
              const Gap(2),
              const SignupCountryPickerWidget(),
              const Gap(30),
              const OnboardingTextField(
                color: greenColor,
                fontSize: 16,
                gap: Gap(6.12),
                hintColor: lightGreyColor,
                hintText: 'Matthew Brown',
                margin: EdgeInsets.fromLTRB(35.33, 0, 31, 0),
                padding: EdgeInsets.only(left: 225.0),
                text: 'Full name',
              ),
              const Gap(24),
              const OnboardingTextField(
                color: greenColor,
                fontSize: 16,
                gap: Gap(6.12),
                hintColor: lightGreyColor,
                hintText: 'E.g matthew@gmail.com',
                margin: EdgeInsets.fromLTRB(35.33, 0, 31, 0),
                padding: EdgeInsets.only(left: 225.0),
                text: 'Email',
              ),
              const Gap(24),
              const SignupCountryWidget(),
              const Gap(6.12),
              const Padding(
                padding: EdgeInsets.only(left: 195.0),
                child: AppTextWidget(
                  text: 'Phone number',
                  color: greenColor,
                  fontSize: 16,
                ),
              ),
              const Gap(60),
              AppPrimaryBtnWidget(
                color: greenColor,
                borderRadius: BorderRadius.circular(12),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const SignupBvnPage(),
                    ),
                  );
                },
                text: 'Sign up',
                margin: const EdgeInsets.fromLTRB(35.33, 0, 31, 0),
                textColor: whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
