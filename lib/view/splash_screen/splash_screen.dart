import 'package:flutter/material.dart';
import 'package:stylish/core/constants/image_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
                color: Color(0xffF83758),
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
