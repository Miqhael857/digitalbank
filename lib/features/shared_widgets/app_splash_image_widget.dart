import 'package:flutter/material.dart';

class AppSplashImage extends StatelessWidget {
  const AppSplashImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_screen.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
