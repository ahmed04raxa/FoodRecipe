import 'package:flutter/material.dart';

import '../../../domain/constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          Text("SPLASH SCREEN",style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}