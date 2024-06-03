import 'package:flutter/material.dart';
// Import your login view file
import 'package:waves_food/module/login_screen/view/login_screen_view.dart';

class OnboardingScreenController {
  void navigateToNextPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginView(), // Replace with your actual LoginView
      ),
    );
  }
}
