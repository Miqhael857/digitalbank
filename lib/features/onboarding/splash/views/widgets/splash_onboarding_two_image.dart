import 'package:flutter/material.dart';

class SplashOnboardingTwoImage extends StatelessWidget {
  const SplashOnboardingTwoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onboarding_two.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
