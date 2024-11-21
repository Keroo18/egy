import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/route_manager/routes.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, Routes.intro);
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/pngs/splash.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Dark overlay on the splash image
          Container(
            color: Colors.black.withOpacity(0.8), // Darken with opacity
          ),
          // Logo on top of the darkened splash image
           Center(
            child: Image(
              width: 221.h,
              height: 217.h,
              image: const AssetImage(
                "assets/images/pngs/logo.png",

              ),
            ),
          ),
        ],
      ),
    );
  }
}
