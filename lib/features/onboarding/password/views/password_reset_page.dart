import 'package:digbank/core/app_colors.dart';

import 'package:digbank/features/onboarding/password/views/widgets/password_country_picker.dart';
import 'package:digbank/features/onboarding/signin/views/signin_page.dart';
import 'package:digbank/features/onboarding/signup/views/signup_bvn_page.dart';

import 'package:digbank/features/onboarding/widgets/onboarding_icon_widget.dart';

import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({Key? key}) : super(key: key);

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
                  size: 20,
                  color: greenColor,
                  icon: const Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (c) => const SigninPage(),
                      ),
                    );
                  },
                ),
              ),
              const Gap(82.25),
              const Padding(
                padding: EdgeInsets.only(left: 32.0),
                child: AppTextWidget(
                  text: 'Password reset',
                  fontSize: 24,
                  color: greenColor,
                  alignment: Alignment.topLeft,
                ),
              ),
              const Gap(5),
              const Padding(
                padding: EdgeInsets.only(left: 32.0),
                child: AppTextWidget(
                  text: 'Enter your phone number to recover\n'
                      'your password',
                  fontSize: 18,
                  color: Color(0xff979797),
                  alignment: Alignment.topLeft,
                ),
              ),
              const Gap(58),
              const PasswordCountryPickerWidget(),
              const Gap(5),
              const Padding(
                padding: EdgeInsets.only(left: 195.0),
                child: AppTextWidget(
                  text: 'Phone number',
                  color: greenColor,
                  fontSize: 16,
                ),
              ),
              const Gap(67.71),
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
                text: 'Recover Password',
                margin: const EdgeInsets.fromLTRB(29, 0, 35, 0),
                textColor: whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
