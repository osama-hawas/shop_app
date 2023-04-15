import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/constants/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      animationCurve: Curves.fastOutSlowIn,
      onTap: (index) {},
      color: kPrimiryColor,
      backgroundColor: Colors.transparent,
      height: 55,
      items: [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.list,
          color: Colors.white,
        ),
      ],
    );
  }
}
