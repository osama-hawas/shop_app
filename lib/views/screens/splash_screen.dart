import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/constants/colors.dart';
import 'package:shop_app/constants/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
            context, homeScreen, (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Spin(
        duration: const Duration(seconds: 1),
        // delay: Duration(seconds: 1),
        child: ElasticInUp(
          duration: const Duration(seconds: 3),
          // delay: Duration(milliseconds: 100),
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/shhop.jpg'),
                const Text(
                  'Online Shopping',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 180, 59, 99),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
