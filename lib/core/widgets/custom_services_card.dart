import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenUtil.dart';
import 'package:untitled2/core/utils/constants/app_style.dart';

import '../utils/constants/app_color.dart';

class CustomServicesCard extends StatelessWidget {
  final String title;
  final String text;
  final TextStyle textStyle;
  final TextStyle titleStyle;

  const CustomServicesCard({
    super.key,
    required this.title,
    required this.titleStyle,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 180.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 200.h,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: AppColor.mintGreen,
              borderRadius: BorderRadius.circular(12.0), // Rounded corners
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.0.h),

                Text(
                  title,
                  style:titleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.0),

                Text(
                  text,
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Column(
            children: [
              CircleAvatar(
                backgroundColor: AppColor.green,
                radius: 25,
                child: Icon(
                  Icons.medical_services_outlined,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
