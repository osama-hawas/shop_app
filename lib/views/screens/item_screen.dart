import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_app/constants/colors.dart';
import 'package:shop_app/data/local_data/category_data.dart';

import '../widgets/custom_bnb_cart.dart';
import '../widgets/item_app_bar.dart';

class ItemScreen extends StatelessWidget {
  ItemScreen({super.key});
  CategoryData categoryData = CategoryData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedecf2),
      body: SafeArea(
        child: ListView(
          children: [
            ItemAppBar(),
            Image.asset(
              width: double.infinity,
              categoryData.category[0].imageUrl,
            ),
            Arc(
              height: 30,
              arcType: ArcType.CONVEY,
              edge: Edge.BOTTOM,
              child: Container(
                margin: EdgeInsets.only(bottom: 8),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                      bottomRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categoryData.category[0].title,
                      style: const TextStyle(
                          color: kPrimiryColor,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: FittedBox(
                              child: RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 32,
                                  itemPadding:
                                      const EdgeInsetsDirectional.only(end: 4),
                                  itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: kPrimiryColor,
                                      ),
                                  onRatingUpdate: (index) {}),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                    size: 15,
                                    color: kPrimiryColor,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  '01',
                                  style: TextStyle(
                                      color: kPrimiryColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    CupertinoIcons.minus,
                                    size: 15,
                                    color: kPrimiryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'her will  write a decribtion for this item.her will  write a decribtion for this item.her will  write a decribtion for this item',
                      style: TextStyle(color: kPrimiryColor, fontSize: 18),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBNBCart(),
    );
  }
}
