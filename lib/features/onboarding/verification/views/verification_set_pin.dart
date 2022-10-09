import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_skeleton_widgets.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationSetPin extends StatelessWidget {
  const VerificationSetPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String requiredNumber = '123456';
    return OnboardingSkeletonWidget(
      backgroundColor: const Color(0xffE9EFE5),
      color: greenColor,
      onTap: () {
        Navigator.pop(context);
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
                  const Gap(82),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                    child: AppTextWidget(
                      text: 'Change PIN',
                      color: greenColor,
                      fontSize: 24.sp,
                    ),
                  ),
                  const Gap(6),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 67, 0),
                    child: AppTextWidget(
                      text: "Key in your new PIN and tap on 'Done \n"
                          "button",
                      color: lightGreyColor,
                      fontSize: 16.sp,
                    ),
                  ),
                  const Gap(72),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(90, 0, 90, 0),
                    child: PinCodeTextField(
                      obscureText: true,
                      cursorColor: greenColor,
                      appContext: context,
                      length: 4,
                      onChanged: (value) {
                        value;
                      },
                      pinTheme: PinTheme(
                        activeFillColor: greenColor,
                        selectedColor: greenColor,
                        activeColor: greenColor,
                        inactiveColor: greenColor,
                        fieldWidth: 32,
                      ),
                      onCompleted: ((value) {
                        if (value == requiredNumber) {
                          'valid Pin';
                        } else {
                          'invalid Pin';
                        }
                      }),
                    ),
                  ),
                  const Gap(87),
                  Center(
                    child: AppTextWidget(
                      text: 'Done',
                      color: whiteColor,
                      fontSize: 18.sp,
                    ),
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
