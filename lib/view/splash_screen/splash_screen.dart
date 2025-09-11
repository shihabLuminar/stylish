import 'package:flutter/material.dart';
import 'package:stylish/core/constants/color_constatns.dart';
import 'package:stylish/core/constants/image_constants.dart';
import 'package:stylish/view/home_screen/home_screen.dart';
import 'package:stylish/view/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          spacing: 9,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(width: 125, height: 100, ImageConstants.appLogo),
            Text(
              "Stylish",
              style: TextStyle(
                color: ColorConstatns.primary,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
