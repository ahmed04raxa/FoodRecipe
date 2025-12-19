import 'package:flutter/material.dart';
import 'package:food_recipe/domain/constants/app_colors.dart';
import 'package:food_recipe/repository/screens/home/home_screen.dart';
import 'package:food_recipe/repository/screens/profile/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List<Widget> _pages = [HomeScreen(), ProfileScreen()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        indicatorColor: AppColors.buttonBgColor,
        backgroundColor: Colors.white,
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: Colors.black),
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.notifications_sharp, color: Colors.black),
            icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
