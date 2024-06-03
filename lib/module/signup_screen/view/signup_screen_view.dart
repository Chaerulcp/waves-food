import 'package:flutter/material.dart';
import 'package:waves_food/core.dart';
import '../controller/signup_screen_controller.dart';

class SignupView extends StatelessWidget {
  final SignupController controller;

  SignupView({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Waves of Food')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo dan Judul
            Image.asset(
                'assets/images/logo.png'), // Ganti dengan path logo yang sesuai
            Text('Waves of Food', style: TextStyle(fontSize: 24)),
            Text('Deliver Favorite Food', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),

            // Formulir Pendaftaran
            TextField(
              decoration: InputDecoration(hintText: 'Nama'),
              onChanged: (value) => controller.user?.nama = value,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Email'),
              onChanged: (value) => controller.user?.email = value,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Password'),
              obscureText: true,
              onChanged: (value) => controller.user?.password = value,
            ),
            SizedBox(height: 20),

            // Tombol Buat Akun
            ElevatedButton(
              onPressed: controller.createUser,
              child: Text('Buat Akun'),
            ),
            SizedBox(height: 10),

            // Atau
            Text('Atau'),
            SizedBox(height: 10),

            // Pendaftaran dengan Facebook dan Google
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: controller.signupWithFacebook,
                  child: Text('f  Facebook'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: controller.signupWithGoogle,
                  child: Text('G  Google'),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Tautan Login
            TextButton(
              onPressed: () => controller.navigateToLoginPage(context),
              child: Text('Sudah Memiliki Akun? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
