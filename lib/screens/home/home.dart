import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/route_manager/routes.dart';
import 'package:untitled2/core/widgets/custom_offer_price.dart';
import 'package:untitled2/core/widgets/custom_services_card.dart';
import 'package:untitled2/core/widgets/myCard.dart';
import 'package:untitled2/core/widgets/under_line.dart';

import '../../core/utils/constants/app_color.dart';
import '../../core/utils/constants/app_style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: mediaQuery.size.height * .3,
            width: mediaQuery.size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35.r),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/pngs/details_back_ground.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.r),
                ),
                color: Colors.black.withOpacity(0.65),
              ),
              child: Column(
                children: [
                  Spacer(
                    flex: 10,
                  ),
                  Text("الرعاية الصحية التى يمكنك تحمل\n تكاليفها",
                      style: AppStyle.font24_700Weight
                          .copyWith(color: Colors.white)),
                  Spacer(
                    flex: 2,
                  ),

                  // Customize text style if needed
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: UnderLine(
                    title: "الواجهات السياحية",
                    widthLinePercentage: .39,
                    withArrow: true,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(right: 10.w),
                  sliver: SliverToBoxAdapter(
                    child: SizedBox(
                      height: 250.h,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final cards = [
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
                            {
                              'title': 'طريق الكباش',
                              'image': 'assets/  images/pngs/splash.jpeg',
                              'location': 'الأقصر - مصر'
                            },
                          ];
                          return Container(
                              width: 200.h,
                              margin: EdgeInsets.all(10.h),
                              child: MyCard(
                                titleStyle: AppStyle.font16_700Weight.copyWith(
                                  color: AppColor.lightText,
                                ),
                                locationStyle:
                                    AppStyle.font10_600Weight.copyWith(
                                  color: AppColor.lightText,
                                ),
                                image: cards[index]['image']!,
                                location: cards[index]['location']!,
                                title: cards[index]['title']!,
                                radius: 12,
                              ));
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: UnderLine(
                    title: "ماهى خدماتنا؟",
                    widthLinePercentage: .32,
                    withArrow: true,
                  ),
                ),
                SliverToBoxAdapter(
                    child: SizedBox(
                      height: 250.h,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final cards = [
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
                            {
                              'title': 'طريق الكباش',
                              'image': 'assets/  images/pngs/splash.jpeg',
                              'location': 'الأقصر - مصر'
                            },
                          ];
                          return Padding(
                            padding: const EdgeInsets.only(right: 12,left: 12,bottom: 12),
                            child: CustomServicesCard(title: 'الخدمات الطبية والعلاجية', titleStyle: AppStyle.font10_600Weight, text: '''هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ''', textStyle: AppStyle.font10_400Weight,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                SliverToBoxAdapter(
                  child: CustomOfferPrice(),
                ),
                SliverToBoxAdapter(
                  child: UnderLine(title: "المراكز والعيادات الطبية", widthLinePercentage: .51),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(right: 10.w),
                  sliver: SliverToBoxAdapter(
                    child: SizedBox(
                      height: 250.h,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final cards = [
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
                            {
                              'title': 'طريق الكباش',
                              'image': 'assets/  images/pngs/splash.jpeg',
                              'location': 'الأقصر - مصر'
                            },
                          ];
                          return Container(
                              width: 200.h,
                              margin: EdgeInsets.all(10.h),
                              child: MyCard(
                                titleStyle: AppStyle.font16_700Weight.copyWith(
                                  color: AppColor.lightText,
                                ),
                                locationStyle:
                                AppStyle.font10_600Weight.copyWith(
                                  color: AppColor.lightText,
                                ),
                                image: cards[index]['image']!,
                                location: cards[index]['location']!,
                                title: cards[index]['title']!,
                                radius: 12,
                              ));
                        },
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
