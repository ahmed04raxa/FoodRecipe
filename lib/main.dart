import 'package:flutter/material.dart';
import 'package:food_recipe/repository/screens/login/login_screen.dart';
import 'package:food_recipe/repository/screens/onboarding/on_boarding_screen.dart';
import 'package:food_recipe/repository/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FOOD RECIPE APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "regular"
      ),
      home: LoginScreen(),
    );
  }
}