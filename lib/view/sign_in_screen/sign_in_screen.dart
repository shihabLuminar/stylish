import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/core/constants/color_constatns.dart';
import 'package:stylish/core/constants/image_constants.dart';
import 'package:stylish/view/global_widgets/custom_button.dart';
import 'package:stylish/view/global_widgets/custom_socialmedia_avatar.dart';
import 'package:stylish/view/global_widgets/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final userNameformKey = GlobalKey<FormState>();
  final passformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29.0, vertical: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome \nBack!",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 36),
              CustomTextField(
                formkey: userNameformKey,
                hint: "Username or Email",
                icon: Icons.person,
                validator: (value) {
                  if (value != null && value.length >= 3) {
                    return null;
                  }

                  return "Enter a valid username";
                },
              ),
              CustomTextField(
                formkey: passformKey,
                bottomPadding: 9,
                obscureText: true,
                hint: "Password",
                icon: Icons.lock,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                ),
                validator: (value) {
                  if (value != null && value.length >= 6) {
                    return null;
                  }

                  return "Enter a valid password";
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: ColorConstatns.primary,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 52),
              CustomButton(
                text: 'Login',
                onTap: () {
                  if (userNameformKey.currentState!.validate() &&
                      passformKey.currentState!.validate()) {}
                },
              ),
              SizedBox(height: 75),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "- OR Continue with -",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: ColorConstatns.darkgrey,
                  ),
                ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  CustomSocialMediaAvatar(imagePath: ImageConstants.google_svg),
                  CustomSocialMediaAvatar(imagePath: ImageConstants.apple_svg),
                  CustomSocialMediaAvatar(
                    imagePath: ImageConstants.facebook_svg,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
