import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/constants/colors.dart';
import 'package:shop_app/constants/routes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sort,
              color: kPrimiryColor,
              size: 30,
            ),
          ),
          Text(
            'Shop App',
            style: TextStyle(
                color: kPrimiryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Badge(
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, cartScreenId);
              },
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: kPrimiryColor,
                size: 35,
              ),
            ),
            badgeStyle: BadgeStyle(
              badgeColor: Colors.red,
            ),
            badgeContent: Text(
              '3',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            position: BadgePosition.custom(top: 3, end: -1),
          ),
        ],
      ),
    );
  }
}
