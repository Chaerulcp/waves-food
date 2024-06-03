// import 'package:flutter/material.dart';
import 'package:waves_food/core.dart';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:waves_food/module/login_screen/model/user.dart';
import 'package:waves_food/module/login_screen/view/login_screen_view.dart';
// import '../view/signup_screen_view.dart';

class SignupController {
  User? user;

  void navigateToLoginPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginView(), // Replace with your actual LoginView
      ),
    );
  }

  void createUser() {
    // Logika untuk membuat user baru (misalnya, mengirim data ke API)
  }

  void signupWithFacebook() {
    // Logika untuk mendaftar dengan Facebook
  }

  void signupWithGoogle() {
    // Logika untuk mendaftar dengan Google
  }
}
