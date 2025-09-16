import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/core/constants/color_constatns.dart';
import 'package:stylish/core/constants/image_constants.dart';
import 'package:stylish/view/global_widgets/custom_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(ImageConstants.getStartedBg),
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 362,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black12,
                Colors.black38,
                Colors.black87,
                Colors.black,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "You want\nAuthentic, here\nyou go!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Find it here, buy it now!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: ColorConstatns.white1,
                  ),
                ),
                SizedBox(height: 44),

                CustomButton(text: "Get Started"),
                SizedBox(height: 34),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
