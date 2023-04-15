import 'package:flutter/material.dart';
import 'package:shop_app/constants/colors.dart';

import '../../constants/routes.dart';
import '../../data/local_data/category_data.dart';

class CustomItem extends StatelessWidget {
  CustomItem({super.key});
  CategoryData categoryData = CategoryData();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: categoryData.category.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: .60),
      itemBuilder: ((context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, itemScreen);
            },
            child: Container(
              padding:
                  const EdgeInsetsDirectional.only(start: 12, end: 12, top: 8),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: kPrimiryColor,
                            borderRadius: BorderRadius.circular(25)),
                        child: const Text(
                          '-%50',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        alignment: Alignment.centerRight,
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Image.asset(
                                categoryData.category[index].imageUrl),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            categoryData.category[index].title,
                            style: const TextStyle(
                                color: kPrimiryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'her will  write a decribtion for this item',
                            style: TextStyle(
                              color: kPrimiryColor,
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '\$55',
                              style: TextStyle(
                                  color: kPrimiryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_cart_checkout,
                                color: kPrimiryColor,
                                size: 24,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
