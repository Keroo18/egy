import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/utils/constants/app_color.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String image;
  final TextStyle titleStyle;

  final double radius;
  const VideoCard({
    super.key,
    required this.title,
    required this.titleStyle,
    required this.image,
    required this.radius,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.r),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children:[
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(radius.r),
              bottomLeft: Radius.circular(radius.r),
            ), // Match the container's borderRadius
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.15),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(radius.r),
                    bottomLeft: Radius.circular(radius.r),
                  ),
                ),
                padding: EdgeInsets.all(8.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      title,
                      style: titleStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40.h,
                backgroundColor: AppColor.darkText,
                child: Icon(Icons.play_arrow_outlined,color: AppColor.lightText,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
