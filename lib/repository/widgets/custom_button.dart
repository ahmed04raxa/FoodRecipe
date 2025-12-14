import 'package:flutter/material.dart';
import 'package:food_recipe/domain/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final double mWidth;
  final double mHeight;
  final String text;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    this.mWidth = 240,
    this.mHeight = 50,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mWidth,
      height: mHeight,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonBgColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.textColorWhite,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
