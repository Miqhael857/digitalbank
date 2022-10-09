import 'package:digbank/core/app_colors.dart';
import 'package:digbank/features/shared_widgets/app_splash_image_widget.dart';
import 'package:digbank/features/shared_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: AppSplashImage()),
          SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(flex: 1),
                  SvgPicture.asset(
                    'assets/svg/check.svg',
                    width: 151.w,
                    height: 151.h,
                  ),
                  const Gap(27),
                  const Padding(
                    padding: EdgeInsets.only(left: 120),
                    child: AppTextWidget(
                      text: 'Password changed',
                      fontSize: 18,
                      color: whiteColor,
                      alignment: Alignment.topLeft,
                    ),
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
