import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final dynamic validator;
  final bool isPrefix;
  final IconData? prefixIcon;
  final int maxLength;
  final TextInputType textInputType;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    required this.isPrefix,
    this.prefixIcon,
    required this.maxLength,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      keyboardType: textInputType,
      validator: validator,
      decoration: InputDecoration(
        counterText: "",
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xFFFAFAFA),
        prefixIcon: isPrefix
            ? Icon(
                prefixIcon,
              )
            : null,
        prefixIconColor: const Color(0xFF000000),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
