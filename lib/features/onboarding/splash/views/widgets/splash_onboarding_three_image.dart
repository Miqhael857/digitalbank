import 'package:flutter/material.dart';

class SplashOnboardingThreeImage extends StatelessWidget {
  const SplashOnboardingThreeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onboarding_three.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
