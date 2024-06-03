import 'package:flutter/material.dart';
import '../controller/splash_screen_controller.dart';
import '../model/splash_screen_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final SplashScreenController _controller = SplashScreenController();

  @override
  void initState() {
    super.initState();
    _controller.navigateToOnboarding(context);
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      model: SplashModel(),
      controller: _controller, // Add the controller here
    );
  }
}

class SplashScreenView extends StatelessWidget {
  final SplashModel model;
  final SplashScreenController _controller;

  const SplashScreenView(
      {super.key,
      required this.model,
      required SplashScreenController controller})
      : _controller = controller;

  @override
  Widget build(BuildContext context) {
    _controller.navigateToOnboarding(context); // Move navigation here

    return Scaffold(
      backgroundColor: const Color(0xFFE5F9F1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 20),
            const Text(
              'Waves Of Food',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Deliver Favorite Food',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
