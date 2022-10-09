import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/password/views/password_reset_page.dart';
import 'package:digbank/features/onboarding/signup/views/signup_page.dart';
import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_splash_image_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_form_field_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: AppSplashImage()),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(190),
              const Padding(
                padding: EdgeInsets.only(left: 37.0),
                child: AppTextWidget(
                  text: 'Sign in',
                  fontSize: 24,
                  color: whiteColor,
                  alignment: Alignment.topLeft,
                ),
              ),
              const Gap(20),
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Gap(35),
                        const Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: AppTextWidget(
                            text: 'Your email address',
                            fontSize: 18,
                            color: greenColor,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        const Gap(15),
                        const AppCustomTextFormField(
                          margin: EdgeInsets.fromLTRB(29.33, 0, 37, 0),
                          hintText: 'E.g matthew@gmail.com',
                          hintcolor: lightGreyColor,
                          color: Color(0xffD4D2D8),
                        ),
                        const Gap(17),
                        const Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: AppTextWidget(
                            text: 'Password',
                            fontSize: 18,
                            color: greenColor,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        const Gap(28),
                        const AppCustomTextFormField(
                          margin: EdgeInsets.fromLTRB(29.33, 0, 37, 0),
                          hintText: 'Enter password',
                          hintcolor: lightGreyColor,
                          color: Color(0xffD4D2D8),
                        ),
                        const Gap(120),
                        AppPrimaryBtnWidget(
                          borderRadius: BorderRadius.circular(12),
                          color: greenColor,
                          textColor: whiteColor,
                          margin: const EdgeInsets.fromLTRB(36, 0, 28, 0),
                          onPressed: () {},
                          text: 'Sign in',
                        ),
                        const Gap(19),
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (c) => const PasswordResetPage(),
                                ),
                              );
                            },
                            child: const AppTextWidget(
                              text: 'Forget password',
                              fontSize: 18,
                              color: greenColor,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                        ),
                        const Gap(30),
                        Padding(
                          padding: const EdgeInsets.only(left: 93.0),
                          child: Row(
                            children: [
                              const AppTextWidget(
                                text: 'A new user?',
                                fontSize: 18,
                                color: greyColor,
                                alignment: Alignment.topLeft,
                              ),
                              const Gap(5),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (c) => const SignupPage(),
                                    ),
                                  );
                                },
                                child: const AppTextWidget(
                                  text: 'Sign up',
                                  fontSize: 18,
                                  color: greenColor,
                                  alignment: Alignment.topLeft,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
