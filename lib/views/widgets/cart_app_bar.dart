import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/constants/colors.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: kPrimiryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Text(
              'My Cart',
              style: TextStyle(
                  fontSize: 24,
                  color: kPrimiryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: kPrimiryColor,
                size: 30,
              ))
        ],
      ),
    );
  }
}
