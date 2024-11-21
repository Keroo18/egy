import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/route_manager/routes.dart';
import 'package:untitled2/core/utils/constants/app_style.dart';
import 'package:untitled2/core/widgets/custom_drop_down.dart';
import '../../core/utils/constants/app_color.dart';
import '../../core/widgets/specialty_card.dart';
import 'package:animated_drop_down_form_field/animated_drop_down_form_field.dart';

class Specialties extends StatelessWidget {
  const Specialties({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: true,

            leading: IconButton(
              icon: Icon(size: 18.w,
                Icons.arrow_back_ios,
                color: AppColor.darkText,
              ), // Replace with your desired icon and color
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              "المراكز والعيادات الطبية",
              style: AppStyle.font14_700Weight.copyWith(
                color: AppColor.darkText,
              ),
            ),
            expandedHeight: mediaQuery.size.height*.35,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.r),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      AppColor.firstGradientColor,
                      AppColor.secondGradientColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: mediaQuery.size.height * .08,
                    ),

                    Center(
                      child: Text(
                        "يمكنك الإختيار بين الواجهات السياحية بسهولة ويسر , حيث يوفر لك التطبيق\n مجموعة متنوعة ورائعة عن أكثر الأماكن زيارة فى مصر",
                        textAlign: TextAlign.center,
                        style: AppStyle.font12_600Weight.copyWith(
                          color: AppColor.darkText,
                        ),
                      ),
                    ),
                    CustomDropDown(),
                    CustomDropDown(),
                    SizedBox(
                      height: mediaQuery.size.height * .02,
                    ),


                  ],
                ),
              ),
            ),

          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.end,
                    "المراكز  والعيادات الطبية",
                    style: AppStyle.font20_700Weight.copyWith(
                      color: AppColor.darkText,
                    ),
                  ),
                  SizedBox(height: 3,),
                  Container(
                    width: mediaQuery.size.width*.51,
                    height: 2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColor.firstGradientColor,
                          AppColor.secondGradientColor
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10.w,right: 10.w,),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12.0.w,
                crossAxisSpacing: 12.0.w,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  final cards = [
                    {
                      'title': 'طريق الكباش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                    {
                      'title': 'fgjfgjش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                    {
                      'title': 'طريق الكباش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                    {
                      'title': 'طريق الكباش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                    {
                      'title': 'طريق الكباش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                    {
                      'title': 'طريق الكباش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                    {
                      'title': 'طريق الكباش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                    {
                      'title': 'طريق الكباش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                    {
                      'title': 'طريق الكباش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                    {
                      'title': 'طريق الكباش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                    {
                      'title': 'طريق الكباش',
                      'image': 'assets/images/pngs/splash.jpeg',
                      'location': 'الأقصر - مصر'
                    },
                  ];

                  return InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.placesDetails,
                      );
                    },

                    child: SpecialtyCard(
                      specialtyName: "hfghfg",
                      specialtyNameStyle: AppStyle.font10_400Weight.copyWith(
                        color: AppColor.lightText,

                      ),
                      titleStyle: AppStyle.font20_700Weight.copyWith(
                        color: AppColor.lightText,
                      ),
                      locationStyle:  AppStyle.font10_600Weight.copyWith(
                        color: AppColor.darkText,
                      ),
                      image: cards[index]['image']!,
                      location: cards[index]['location']!,
                      title: cards[index]['title']!,
                      radius: 25,
                    ),
                  );
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

