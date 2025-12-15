import 'package:flutter/material.dart';
import 'package:food_recipe/domain/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final double mWidth;
  final double mHeight;
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  const CustomTextField({
    super.key,
    this.mWidth = 300,
    this.mHeight = 50,
    required this.labelText,
    required this.hintText,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mWidth,
      height: mHeight,
      child: TextField(
        autofocus: false,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 8),
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(color: AppColors.textColorBlack),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.buttonBgColor,width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.buttonBgColor,width: 2),
          ),
        ),
      ),
    );
  }
}
