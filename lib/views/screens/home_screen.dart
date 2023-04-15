import 'package:flutter/material.dart';
import 'package:shop_app/constants/colors.dart';
import 'package:shop_app/views/widgets/custom_app_bar.dart';
import 'package:shop_app/views/widgets/custom_item.dart';

import '../widgets/custom_bottom_navigation_bar.dart';
import '../widgets/custom_category_item.dart';
import '../widgets/custom_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const CustomAppBar(),
            Container(
              // will remove soon
              // height: 500,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xffedecf2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  const CustomSearchBar(),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: kPrimiryColor),
                    ),
                  ),
                  CustomCategoryItem(),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Best Selling',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: kPrimiryColor),
                    ),
                  ),
                  CustomItem(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:const CustomBottomNavigationBar(),
    );
  }
}
