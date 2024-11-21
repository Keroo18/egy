import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled2/core/utils/constants/app_color.dart';

import '../route_manager/routes.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String location;
  final String image;
  final TextStyle titleStyle;
  final TextStyle locationStyle;
  final bool? withArrow;

  final double radius;

  MyCard({
    super.key,
    required this.title,
    required this.location,
    required this.locationStyle,
    required this.titleStyle,
    required this.image,
    this.withArrow = false,
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
        children: [
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          title,
                          style: titleStyle,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "assets/images/svgs/location.svg",color: AppColor.lightText,),

                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              location,
                              style: locationStyle,
                            ),

                          ],
                        ),
                      ],
                    ),
                    if (withArrow!) ...[
                      IconButton(
                        icon: Icon(
                          Icons.keyboard_double_arrow_left,
                          size: 30.w,
                          color: AppColor.lightText,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.directions);
                        },
                      ),
                    ]else...[
                      SizedBox(),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
