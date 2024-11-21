import 'package:animated_drop_down_form_field/animated_drop_down_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants/app_color.dart';
import '../utils/constants/app_style.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = AppStyle.font14_400Weight.copyWith(color: AppColor.darkText);
    return AnimatedDropDownFormField(
      dropDownAnimationParameters: SizingDropDownAnimationParameters(
        duration: Duration(milliseconds: 200),
        reversDuration: Duration(milliseconds: 200),
      ) ,
      placeHolder: Text("أين تريد الذهاب...",style: AppStyle.font14_700Weight.copyWith(color: AppColor.darkText),),
      buttonDecoration: BoxDecoration(
        color:
        AppColor.lightText,
        borderRadius: BorderRadius.all(Radius.circular(12.r)),

      ),
      buttonPadding: EdgeInsets.all(8.h),
      actionWidget: Icon(Icons.keyboard_arrow_down),
      listHeight: 250.h,
      listPadding: EdgeInsets.all(5.w),
      listBackgroundDecoration: BoxDecoration(
        color: AppColor.lightText,
        borderRadius: BorderRadius.all(Radius.circular(12.r),),
      ),
      items:[
        Text("القاهرة", style: textStyle),
        Text("الجيزة", style: textStyle),
        Text("الإسكندرية", style: textStyle),
        Text("الشرقية", style: textStyle),
        Text("الدقهلية", style: textStyle),
        Text("القليوبية", style: textStyle),
        Text("المنوفية", style: textStyle),
        Text("الغربية", style: textStyle),
        Text("البحيرة", style: textStyle),
        Text("كفر الشيخ", style: textStyle),
        Text("دمياط", style: textStyle),
        Text("بورسعيد", style: textStyle),
        Text("الإسماعيلية", style: textStyle),
        Text("السويس", style: textStyle),
        Text("جنوب سيناء", style: textStyle),
        Text("شمال سيناء", style: textStyle),
        Text("الفيوم", style: textStyle),
        Text("بني سويف", style: textStyle),
        Text("المنيا", style: textStyle),
        Text("أسيوط", style: textStyle),
        Text("سوهاج", style: textStyle),
        Text("قنا", style: textStyle),
        Text("الأقصر", style: textStyle),
        Text("أسوان", style: textStyle),
        Text("البحر الأحمر", style: textStyle),
        Text("الوادي الجديد", style: textStyle),
        Text("مطروح", style: textStyle),
      ],
    );
  }
}
