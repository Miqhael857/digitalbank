import 'package:digbank/core/app_colors.dart';

import 'package:digbank/features/onboarding/verification/views/widget/select_Id_btn.dart';

import 'package:digbank/features/onboarding/verification/views/widget/verification_dropdown_btn.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_skeleton_widgets.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_text_field_widget.dart';

import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gap/gap.dart';

class IdCaptureOne extends StatelessWidget {
  const IdCaptureOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  const Gap(65.25),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 127.0, 0),
                    child: AppTextWidget(
                      text: 'Identify Verification',
                      color: greenColor,
                      fontSize: 24.sp,
                    ),
                  ),
                  const Gap(3),
                  Padding(
                    padding: const EdgeInsets.only(right: 70.0),
                    child: AppTextWidget(
                      text: 'Choose your type of identification and\n'
                          'take a snapshot of it.',
                      color: lightGreyColor,
                      fontSize: 16.sp,
                    ),
                  ),
                  const Gap(59),
                  Padding(
                    padding: const EdgeInsets.only(left: 148.0),
                    child: AppTextWidget(
                      text: 'Type of identity',
                      color: greenColor,
                      fontSize: 16.sp,
                    ),
                  ),
                  const Gap(14.83),
                  const VerificationDropdownBtn(),
                  const Gap(53),
                  const OnboardingTextField(
                    color: greenColor,
                    fontSize: 16,
                    gap: Gap(6.12),
                    hintColor: lightGreyColor,
                    hintText: 'Enter ID number',
                    margin: EdgeInsets.fromLTRB(0, 0, 31, 0),
                    padding: EdgeInsets.only(left: 155.0),
                    text: 'Identity number',
                  ),
                  const Gap(100.83),
                  SelectId(
                    color: lightGreenColor,
                    borderRadius: BorderRadius.circular(12),
                    text: 'Validate ID',
                    margin: const EdgeInsets.fromLTRB(36, 0, 28, 0),
                    textColor: greenColor,
                    fontSize: 16,
                  ),
                  const Gap(10),
                  Center(
                    child: AppTextWidget(
                      text: 'Skip for now',
                      color: whiteColor,
                      fontSize: 14.sp,
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
