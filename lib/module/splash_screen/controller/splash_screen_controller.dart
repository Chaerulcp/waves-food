import 'package:flutter/material.dart';
import 'package:waves_food/core.dart';

class SplashScreenController {
  void navigateToOnboarding(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreenView(
            controller: OnboardingScreenController(),
          ),
        ),
      );
    });
  }
}
