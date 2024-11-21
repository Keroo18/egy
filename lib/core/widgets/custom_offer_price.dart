import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../route_manager/routes.dart';
import '../utils/constants/app_color.dart';
import '../utils/constants/app_style.dart';

class CustomOfferPrice extends StatelessWidget {
  const CustomOfferPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, Routes.layout);
      },
      style: TextButton.styleFrom(
        padding:  EdgeInsets.symmetric(vertical: 12, horizontal: 12.h),
        backgroundColor: Colors
            .transparent, // Make the button's background transparent
      ),
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient:const  LinearGradient(
            colors: [
              AppColor.firstGradientColor,
              AppColor.secondGradientColor,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/svgs/00-splash - 1-image2 2.png",height: 30.h,width: 50.h,color: Colors.white,
              ),
              Text(
                "احصل على عرض سعر",
                textAlign: TextAlign.center,
                style: AppStyle.font20_700Weight.copyWith(
                  color: AppColor.lightText,
                ),
              ),
            ],
          ),
        ),
      ),
    )
    ;
  }
}
