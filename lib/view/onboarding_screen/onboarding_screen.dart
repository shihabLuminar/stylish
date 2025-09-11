import 'package:flutter/material.dart';
import 'package:stylish/core/constants/color_constatns.dart';
import 'package:stylish/core/constants/image_constants.dart';
import 'package:stylish/view/home_screen/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List data = [
    {
      "image": ImageConstants.onboarding1,
      "title": "Choose Products",
      "desc":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
    {
      "image": ImageConstants.onboarding2,
      "title": "Choose Products",
      "desc":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
    {
      "image": ImageConstants.onboarding3,
      "title": "Choose Products",
      "desc":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
  ];

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              text: "${currentindex + 1}",
              children: [
                TextSpan(
                  text: "/${data.length}",
                  style: TextStyle(color: ColorConstatns.grey),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
                (route) => false,
              );
            },
            child: Text(
              "Skip",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(data[currentindex]['image']),
              Text(
                data[currentindex]['title'],
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                ),
              ),
              Text(
                data[currentindex]['desc'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstatns.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: Text(
              "Prev",
              style: TextStyle(
                color: ColorConstatns.grey,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () {
              if (currentindex > 0) {
                currentindex--;
                setState(() {});
              }
            },
          ),

          TextButton(
            child: Text(
              "Next",
              style: TextStyle(
                color: ColorConstatns.primary,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () {
              if (currentindex < data.length - 1) {
                currentindex++;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
