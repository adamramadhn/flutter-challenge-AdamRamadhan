import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen_flutter/constant/c.dart';

import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              C.assets.imgHeaderSplash,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              C.assets.imgLogo,
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.asset(
              C.assets.imgFooter,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
