import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/widgets/custom_offer_price.dart';

import '../../core/route_manager/routes.dart';
import '../../core/utils/constants/app_color.dart';
import '../../core/utils/constants/app_style.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
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
            color: Colors.black.withOpacity(0.61), // Darken with opacity
          ),
          // Logo on top of the darkened splash image
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 221.h,
                height: 217.h,
                image: const AssetImage(
                  "assets/images/pngs/logo.png",
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * .3,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.layout);
                },
                style: TextButton.styleFrom(
                  padding:const  EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  backgroundColor: Colors
                      .transparent, // Make the button's background transparent
                ),
                child: Ink(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        AppColor.firstGradientColor,
                        AppColor.secondGradientColor
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(
                        12.r), // Optional: Rounded corners
                  ),
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.w, horizontal: 24.w),
                    child: Text(
                      "ادخل التطبيق الأن",
                      textAlign: TextAlign.center,
                      style: AppStyle.font20_700Weight.copyWith(
                        color: AppColor.lightText,
                      ),
                    ),
                  ),
                ),
              ),
             const  CustomOfferPrice(),
            ],
          ),
        ],
      ),
    );
  }
}
