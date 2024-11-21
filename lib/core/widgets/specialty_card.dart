import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled2/core/utils/constants/app_color.dart';

import '../route_manager/routes.dart';

class SpecialtyCard extends StatelessWidget {
  final String title;
  final String location;
  final String specialtyName;
  final String image;
  final TextStyle titleStyle;
  final TextStyle locationStyle;
  final TextStyle specialtyNameStyle;
  final double radius;
  final bool? withArrow;
  SpecialtyCard({
    super.key,
    required this.title,
    required this.location,
    required this.locationStyle,
    required this.titleStyle,
    required this.image,
    required this.radius,
    required this.specialtyName,
    required this.specialtyNameStyle,
    this.withArrow = false,
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
                padding: EdgeInsets.only(
                  left: 12,
                  right: 12,
                  bottom: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.15),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(radius.r),
                    bottomLeft: Radius.circular(radius.r),
                  ),
                ),
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
                        Text(
                          textAlign: TextAlign.start,
                          specialtyName,
                          style: specialtyNameStyle,
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
                    ] else ...[
                      SizedBox(),
                    ],
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      color: AppColor.lightText,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          SvgPicture.asset(
                            "assets/images/svgs/location.svg",
                            color: AppColor.darkText,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            location,
                            style: locationStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
