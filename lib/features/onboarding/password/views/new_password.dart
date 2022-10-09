import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/onboarding/widgets/onboarding_text_field_widget.dart';
import 'package:digbank/features/onboarding/widgets/password_changed_widget.dart';
import 'package:digbank/features/shared_widgets/app_primarybtn_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

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
              const Gap(153),
              const Padding(
                padding: EdgeInsets.only(left: 35.0),
                child: AppTextWidget(
                  text: 'New password',
                  fontSize: 24,
                  color: greenColor,
                  alignment: Alignment.topLeft,
                ),
              ),
              const Gap(42),
              const OnboardingTextField(
                color: greenColor,
                fontSize: 16,
                gap: Gap(3.12),
                hintColor: lightGreyColor,
                hintText: 'Enter password',
                margin: EdgeInsets.fromLTRB(35.33, 0, 31, 0),
                padding: EdgeInsets.only(left: 200.0),
                text: 'New password',
              ),
              const Gap(24),
              const OnboardingTextField(
                color: greenColor,
                fontSize: 16,
                gap: Gap(3.12),
                hintColor: lightGreyColor,
                hintText: 'Enter password',
                margin: EdgeInsets.fromLTRB(35.33, 0, 31, 0),
                padding: EdgeInsets.only(left: 178.0),
                text: 'Confirm password',
              ),
              const Gap(90),
              AppPrimaryBtnWidget(
                color: greenColor,
                borderRadius: BorderRadius.circular(12),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const PasswordChangedWidget(),
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
