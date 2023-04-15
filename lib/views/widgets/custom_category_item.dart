import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/constants/colors.dart';
import 'package:shop_app/data/local_data/category_data.dart';

class CustomCategoryItem extends StatelessWidget {
   CustomCategoryItem({super.key});
  CategoryData categoryData=CategoryData();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categoryData.category.length,
          ((index) => Container(
                margin:const EdgeInsets.symmetric(horizontal: 10),
                padding:const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      categoryData.category[index].imageUrl,
                      height: 40,
                      width: 40,
                    ),
                    Text(
                      categoryData.category[index].title,
                      style:const TextStyle(
                          color: kPrimiryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
