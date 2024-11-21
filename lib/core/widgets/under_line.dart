import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../route_manager/routes.dart';
import '../utils/constants/app_color.dart';
import '../utils/constants/app_style.dart';

class UnderLine extends StatelessWidget {
  final String title;
  final bool? withArrow;
  final double widthLinePercentage;

  UnderLine({
    super.key,
    required this.title,
    this.withArrow = true,
    required this.widthLinePercentage,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.all(10.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppStyle.font20_700Weight.copyWith(
                  color: AppColor.darkText,
                ),
              ),
              SizedBox(height: 3),
              Container(
                width: mediaQuery.size.width * widthLinePercentage,
                height: 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColor.firstGradientColor,
                      AppColor.secondGradientColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ],
          ),

          if (withArrow!) ...[
            IconButton(
              icon: Icon(
                Icons.keyboard_double_arrow_left,
                size: 30.w,
                color: AppColor.darkText,
              ),
              onPressed: () {
                Navigator.pushNamed(context,Routes.directions);
              },
            ),
          ]else...[
            SizedBox(),
          ],
        ],
      ),
    );
  }
}
