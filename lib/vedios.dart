import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/utils/constants/app_color.dart';
import 'package:untitled2/core/utils/constants/app_style.dart';
import 'package:untitled2/core/widgets/medical_specialties.dart';
import 'package:untitled2/core/widgets/myCard.dart';
import 'package:untitled2/core/widgets/video_card.dart';

class Vedios extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final double percentageSizeFromWidth;
  final String iconPath;
  const Vedios(
      {super.key,required this.title,required this.textStyle, required this.percentageSizeFromWidth,required this.iconPath});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Center(
      child: Container(width:400,height:400,child: VideoCard(title: "title", titleStyle: AppStyle.font14_400Weight, image: "assets/images/pngs/splash.jpeg", radius: 12,)),
    );
  }
}
