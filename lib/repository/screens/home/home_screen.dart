import 'package:flutter/material.dart';
import 'package:food_recipe/domain/constants/app_colors.dart';
import 'package:food_recipe/models/categories_recipe.dart';
import 'package:food_recipe/models/recipe_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final List<String> mCategoriesList = [
  //   'All',
  //   'Dinner',
  //   'Lunch',
  //   'breakfast',
  //   'Dinner',
  // ];
  int selectedIndex = 0;
  //
  // final List<Map<String, dynamic>> mProducts = [
  //   {'imgPath': "assets/images/chicken-salad.jpg"},
  //   {'imgPath': "assets/images/ckicken-salad.png"},
  //   {'imgPath': "assets/images/grilled-chicken-salad.jpg"},
  //   {'imgPath': "assets/images/mushroom salad.png"},
  //   {'imgPath': "assets/images/sald-mix.png"},
  //   {'imgPath': "assets/images/Shrimp Kale.png"},
  //   {'imgPath': "assets/images/thai salad.png"},
  // ];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextField(
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
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Papular Menus",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColorBlack,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColorBlack,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(menuItems.length, (index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {});
                        selectedIndex = index;
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: selectedIndex == index
                              ? AppColors.buttonBgColor
                              : Colors.white,
                        ),
                        child: Text(
                          menuItems[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: selectedIndex == index
                                ? FontWeight.bold
                                : FontWeight.w500,
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(recipeItems.length, (index) {
                  final recipe = recipeItems[index];
                  return Padding(
                    padding: index == 0
                        ? EdgeInsets.only(left: 20, right: 10)
                        : EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.45,
                        height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(recipe.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: recipe.fav ? Colors.red : Colors.black26,
                              ),
                              child: Icon(
                                Icons.favorite_border_sharp,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.black26,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          recipe.name,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amberAccent,
                                            size: 18,
                                          ),
                                          Text(
                                            "${recipe.rate}",
                                            style: TextStyle(
                                              height: 0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    "1 bowl (${recipe.weight}g)",
                                    style: TextStyle(
                                      height: 0,
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    "${recipe.calorie} Kkal | 25% AKL",
                                    style: TextStyle(
                                      height: 0,
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColorBlack,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColorBlack,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(recipeCategory.length, (index) {
                  return Padding(
                    padding: index == 0
                        ? EdgeInsets.only(left: 20, right: 20)
                        : EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 33,
                          backgroundColor: recipeCategory[index].color,
                          child: Image.asset(
                            recipeCategory[index].image,
                            height: 40,
                            width: 40,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          recipeCategory[index].name,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://media.istockphoto.com/id/803934008/photo/female-chef-in-kitchen.jpg?s=612x612&w=0&k=20&c=jYq8CNkSAvzu8QwpKY71xQ2HuqKPWqDjBUcj72XtyEU=",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hon Ci Minh",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Expert Chef",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
