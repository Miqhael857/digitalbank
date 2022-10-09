import 'dart:async';

import 'package:digbank/features/onboarding/splash/views/splash_intro_slider.dart';
import 'package:digbank/features/shared_widgets/app_splash_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 15),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (c) => const SplashIntroSlider())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: AppSplashImage(),
          ),
          SafeArea(
            child: Center(
              child: SvgPicture.asset(
                'assets/svg/splash_screen_logo.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
