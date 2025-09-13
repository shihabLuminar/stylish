import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/core/constants/color_constatns.dart';

class CustomSocialMediaAvatar extends StatelessWidget {
  const CustomSocialMediaAvatar({
    super.key,
    required this.imagePath,
    this.onTap,
  });
  final String imagePath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 54,
        width: 54,
        decoration: BoxDecoration(
          border: Border.all(color: ColorConstatns.red),
          color: ColorConstatns.lightRed,
          shape: BoxShape.circle,
        ),
        child: Center(child: SvgPicture.asset(imagePath, height: 25)),
      ),
    );
  }
}
