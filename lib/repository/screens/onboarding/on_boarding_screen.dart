import 'package:flutter/material.dart';
import 'package:food_recipe/domain/constants/app_colors.dart';
import 'package:food_recipe/repository/screens/login/login_screen.dart';
import 'package:food_recipe/repository/widgets/custom_button.dart';
import 'package:food_recipe/repository/widgets/ui_helper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/onboarding.png"),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 110),
              child: UiHelper.customImage(
                imgUrl: "logo.png",
                mWidth: 79,
                mHeight: 79,
              ),
            ),
            SizedBox(height: 20),
            UiHelper.customText(
              text: "100K+ Premium Recipe ",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.textColorWhite,
            ),
            SizedBox(height: 200),
            Text(
              "Get \nCooking",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            UiHelper.customText(
              text: "Simple way to find Tasty Recipe",
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: AppColors.textColorWhite,
            ),
          ],
        ),
      ),
      floatingActionButton: CustomButton(
        mWidth: 243,
        mHeight: 54,
        text: "Start Cooking",
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
