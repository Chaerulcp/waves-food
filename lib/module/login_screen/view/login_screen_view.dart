import 'package:flutter/material.dart';
import 'package:waves_food/core.dart';
// import 'package:waves_food/module/home_screen/view/home_screen_view.dart';

// import 'package:flutter/material.dart';
import 'package:waves_food/module/login_screen/controller/login_screen_controller.dart';
// import 'package:waves_food/module/signup_screen/view/signup_screen_view.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginController _controller = LoginController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png', // Ganti dengan path logo Anda
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Waves Of Food',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Deliver Favorite Food',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              const Text(
                'Login ke Akun Anda',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: _controller.validateEmail,
                onSaved: (value) => _controller.user.email = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: _controller.validatePassword,
                onSaved: (value) => _controller.user.password = value!,
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // ... (Logika untuk reset password)
                },
                child: Text('Lupa Kata Sandi Anda? Reset'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Atau',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Lanjutkan dengan',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // ... (Logika untuk login dengan Facebook)
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Warna tombol Facebook
                    ),
                    child: const Row(
                      children: <Widget>[
                        Icon(Icons.facebook),
                        SizedBox(width: 5),
                        Text('Facebook'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // ... (Logika untuk login dengan Google)
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Warna tombol Google
                    ),
                    child: const Row(
                      children: <Widget>[
                        Icon(Icons.g_mobiledata), // Icon Google
                        SizedBox(width: 5),
                        Text('Google'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _controller.login(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Warna tombol Login
                  minimumSize: const Size(double.infinity, 50), // Lebar penuh
                ),
                child: Text('Login'),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () => _controller.navigateToSignupPage(context),
                // ... (Logika untuk pindah ke halaman Sign Up)

                child: const Text('Tidak Memiliki Akun? Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
