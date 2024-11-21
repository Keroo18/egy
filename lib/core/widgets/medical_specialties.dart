import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/utils/constants/app_color.dart';

class MedicalSpecialties extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final double percentageSizeFromWidth;
  final String iconPath;
  const MedicalSpecialties(
      {super.key,
      required this.title,
      required this.textStyle,
      required this.percentageSizeFromWidth,
      required this.iconPath});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Center(
      child: Container(
        padding: const EdgeInsets.all(5),
        width: mediaQuery.size.width * percentageSizeFromWidth,
        height: mediaQuery.size.width * percentageSizeFromWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            gradient: const LinearGradient(
              colors: [
                AppColor.firstGradientColor,
                AppColor.secondGradientColor,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(
              image: AssetImage(iconPath),
              width: mediaQuery.size.width * percentageSizeFromWidth / 2,
              height: mediaQuery.size.width * percentageSizeFromWidth / 2,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
