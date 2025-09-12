import 'package:flutter/material.dart';
import 'package:stylish/core/constants/color_constatns.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.icon,
    this.controller,
    this.validator,
    this.suffixIcon,
    this.obscureText = false,
    this.bottomPadding = 31,
  });
  final String hint;
  final IconData? icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool obscureText;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          label: Text(hint),
          filled: true,
          fillColor: Color(0xffF3F3F3),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xffA8A8A9)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorConstatns.primary),
          ),
          prefixIcon: Icon(icon, size: 24, color: Color(0xff626262)),
          suffixIcon: suffixIcon,
        ),
        validator: validator,
      ),
    );
  }
}
