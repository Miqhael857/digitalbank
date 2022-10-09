import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/signup/views/signup_otp_page.dart';
import 'package:digbank/features/onboarding/signup/views/signup_page.dart';
import 'package:digbank/features/onboarding/signup/views/widgets/dropdown_btn_widget.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_skeleton_widgets.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_text_field_widget.dart';
import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignupBvnPage extends StatelessWidget {
  const SignupBvnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingSkeletonWidget(
      backgroundColor: const Color(0xffE9EFE5),
      color: greenColor,
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (c) => const SignupPage(),
          ),
        );
      },
      body: Scaffold(
        backgroundColor: const Color(0xffE9EFE5),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 34),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/svg/bvn_logo.svg',
                    width: 320.w,
                    height: 64.96.h,
                  ),
                  const Gap(3),
                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: SvgPicture.asset(
                      'assets/svg/bvn_power.svg',
                      width: 130.4.w,
                      height: 16.64.h,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 170.0, 0),
                    child: AppTextWidget(
                      text: 'BVN Validation',
                      color: greenColor,
                      fontSize: 24.sp,
                    ),
                  ),
                  const Gap(3),
                  Padding(
                    padding: const EdgeInsets.only(right: 70.0),
                    child: AppTextWidget(
                      text: 'We need to validate your BVN in\n'
                          'order to give you an account number\n'
                          'which will allow you to send and\n'
                          'receive money from other banks.',
                      color: lightGreyColor,
                      fontSize: 16.sp,
                    ),
                  ),
                  const Gap(90),
                  const OnboardingTextField(
                    color: greenColor,
                    fontSize: 16,
                    gap: Gap(6.12),
                    hintColor: Color(0xff979797),
                    hintText: 'E.g 2345678900',
                    margin: EdgeInsets.fromLTRB(7.33, 0, 37, 0),
                    padding: EdgeInsets.only(left: 225.0),
                    text: 'BVN',
                  ),
                  const Gap(40),
                  const DropdownBtnWidget(),
                  const Gap(150),
                  AppPrimaryBtnWidget(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(12),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (c) => const SignupOtpPage()),
                      );
                    },
                    text: 'Validate',
                    margin: const EdgeInsets.fromLTRB(7.33, 0, 37, 0),
                    textColor: whiteColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
