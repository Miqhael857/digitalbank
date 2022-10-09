import 'package:flutter/material.dart';

class SplashOnboardingOneImage extends StatelessWidget {
  const SplashOnboardingOneImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onboarding_one.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
