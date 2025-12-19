import 'package:flutter/material.dart';
import 'package:food_recipe/domain/constants/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> mCategoriesList = [
    'All',
    'Dinner',
    'Lunch',
    'breakfast',
    'Dinner',
  ];
  int selectedIndex = 0;

  final List<Map<String, dynamic>> mProducts = [
    {'imgPath': "image 1.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  "Hello ,",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "What are you cooking today?",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0XFFFFCE80),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(
                "assets/images/profile.png",
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                hintText: "Search any recipe",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  mCategoriesList.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(top: 10, left: 11),
                    child: GestureDetector(
                      onTap: () {
                        selectedIndex = index;
                        setState(() {});
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: selectedIndex == index
                              ? AppColors.buttonBgColor
                              : Colors.white,
                          // gradient: LinearGradient(
                          //   colors: [
                          //     selectedIndex == index
                          //         ? Colors.green
                          //         : Colors.white,
                          //     selectedIndex == index
                          //         ? Colors.greenAccent
                          //         : Colors.white,
                          //   ],
                          // ),
                        ),
                        child: Text(
                          mCategoriesList[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            // ListView.builder(
            //   itemCount: 4,
            //   itemBuilder: (context, index) {
            //     return Image.asset(mProducts[index]['imgPath']);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
