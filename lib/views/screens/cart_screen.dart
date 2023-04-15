import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shop_app/constants/colors.dart';
import 'package:shop_app/views/widgets/cart_item_sample.dart';

import '../widgets/car_bottom_nav_bar.dart';
import '../widgets/cart_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const CartAppBar(),
            Container(
              // will remove soon

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
                  CartItemSample(),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              color: kPrimiryColor,
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'Add Coupon Code',
                            style: TextStyle(
                                fontSize: 16,
                                color: kPrimiryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
