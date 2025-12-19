import 'package:flutter/material.dart';
import 'package:food_recipe/domain/constants/app_colors.dart';
import 'package:food_recipe/repository/screens/bottomnav/bottom_nav_screen.dart';
import 'package:food_recipe/repository/screens/signup/signup_screen.dart';
import 'package:food_recipe/repository/widgets/custom_button.dart';
import 'package:food_recipe/repository/widgets/custom_text_field.dart';
import 'package:food_recipe/repository/widgets/ui_helper.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UiHelper.customText(
              text: "Hello,",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            UiHelper.customText(text: "Welcome Back!", fontSize: 20),
            SizedBox(height: 15),
            CustomTextField(
              controller: emailController,
              labelText: "Email Address",
              hintText: "Enter Your Email",
              mWidth: 372,
              mHeight: 55,
            ),
            SizedBox(height: 15),
            CustomTextField(
              controller: passwordController,
              labelText: "Password",
              hintText: "Enter Your Password",
              mWidth: 372,
              mHeight: 55,
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: AppColors.textColorYellow),
              ),
            ),
            CustomButton(
              text: "Login",
              mWidth: 372,
              mHeight: 55,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavScreen()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          UiHelper.customText(text: "Don’t have an account?", fontSize: 12),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupScreen()),
              );
            },
            child: Text(
              "Sign up",
              style: TextStyle(color: AppColors.textColorYellow),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
