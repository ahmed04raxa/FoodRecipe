import 'package:flutter/material.dart';
import 'package:food_recipe/repository/screens/login/login_screen.dart';
import '../../../domain/constants/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/ui_helper.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UiHelper.customText(
              text: "Create an account",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            UiHelper.customText(
              text: "Let’s help you set up your account,\nit won’t take long.",
              fontSize: 12,
            ),
            SizedBox(height: 30),
            CustomTextField(
              controller: usernameController,
              labelText: "Username",
              hintText: "Enter Your Username",
              mWidth: 372,
              mHeight: 55,
            ),
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
            CustomButton(
              text: "Sign Up",
              mWidth: 372,
              mHeight: 55,
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          UiHelper.customText(text: "Already have account?", fontSize: 12),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text(
              "Login",
              style: TextStyle(color: AppColors.textColorYellow),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
