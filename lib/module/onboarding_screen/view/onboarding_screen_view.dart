import 'package:flutter/material.dart';
import 'package:waves_food/core.dart'; // Assuming core.dart contains your LoginView import
import 'package:waves_food/module/onboarding_screen/controller/onboarding_screen_controller.dart';

class OnboardingScreenView extends StatelessWidget {
  final OnboardingScreenController controller;

  const OnboardingScreenView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Optional background color
      body: SafeArea(
        // Ensures content doesn't overlap system UI
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(
                24.0), // Increased padding for better visual spacing
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/burger_image.png',
                  height: 250, // Adjust image size as needed
                ),
                const SizedBox(height: 30),
                const Text(
                  'Menikmati Hidangan Berkualitas Restoran di Rumah',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Pesan makanan favoritmu dari restoran terbaik dan nikmati di rumah dengan mudah.', // Added a more descriptive text
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => controller.navigateToNextPage(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15), // Increased button size
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text('Mulai'), // Changed text to "Mulai" (Start)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
