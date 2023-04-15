import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/constants/colors.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                    color: kPrimiryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              Text(
                '\$255',
                style: TextStyle(
                    color: kPrimiryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimiryColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              'Check Out',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
