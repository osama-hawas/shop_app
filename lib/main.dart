import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/views/screens/cart_screen.dart';
import 'package:shop_app/views/screens/home_screen.dart';
import 'package:shop_app/views/screens/item_screen.dart';

import 'constants/routes.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        homeScreenId: (context) => const HomeScreen(),
        cartScreenId: (context) => const CartScreen(),
        itemScreen :(context) => const ItemScreen(),
      },
    );
  }
}
