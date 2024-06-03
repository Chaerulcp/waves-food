import 'package:flutter/material.dart';
import 'package:waves_food/core.dart';
import '../model/user.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginController {
  User user = User(email: '', password: '');

  void navigateToSignupPage(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignupView(
            controller: SignupController(),
          ),
        ),
      );
    });
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong';
    }
    if (!value.contains('@')) {
      return 'Format email tidak valid';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password tidak boleh kosong';
    }
    return null;
  }

  Future<void> login(BuildContext context) async {
    if (!await _isValidForm(context)) {
      return;
    }

    try {
      var dio = Dio();
      var response = await dio.post(
        'YOUR_API_ENDPOINT/login',
        data: {'email': user.email, 'password': user.password},
      );

      if (response.statusCode == 200) {
        // Successful login (handle token/user data)
        Fluttertoast.showToast(msg: 'Login berhasil!');
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        _handleLoginError(context, response.statusCode);
      }
    } catch (error) {
      _handleLoginError(context, null);
    }
  }

  // Helper Functions
  Future<bool> _isValidForm(BuildContext context) async {
    if (user.email.isEmpty || user.password.isEmpty) {
      Fluttertoast.showToast(msg: 'Mohon isi semua kolom.');
      return false;
    }
    return true;
  }

  void _handleLoginError(BuildContext context, int? statusCode) {
    String message = 'Login gagal.';
    if (statusCode == 401) {
      message = 'Email atau kata sandi salah.';
    } else if (statusCode != null) {
      message = 'Terjadi kesalahan: $statusCode';
    }

    Fluttertoast.showToast(msg: message);
  }
}
