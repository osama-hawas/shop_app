import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/constants/colors.dart';

class CustomBNBCart extends StatelessWidget {
  const CustomBNBCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            color: Colors.grey,
            blurRadius: 10,
          )
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Price :',
              style: TextStyle(
                  color: kPrimiryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 16),
              child: Text(
                '\$120',
                style: TextStyle(
                    color: kPrimiryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: kPrimiryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: Text(
                      'Add To Cart',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
