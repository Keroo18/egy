
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/route_manager/routes.dart';
import '../../core/utils/constants/app_color.dart';
import '../../core/utils/constants/app_style.dart';
import '../../core/widgets/myCard.dart';

class PlacesDetails extends StatelessWidget {
  const PlacesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
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
              "طريق الكباش",
              style: AppStyle.font14_700Weight.copyWith(
                color: AppColor.darkText,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration:const BoxDecoration(
                color: Colors.white,),

              ),
            ),

          ),

          SliverPadding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w,top: 10.h,),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: mediaQuery.size.height * .34,
                decoration:const  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/pngs/details_back_ground.png"),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFFFFFF).withOpacity(0),
                        const Color(0xFFFFFFFF).withOpacity(.95),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            FloatingActionButton(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                              ),
                              onPressed: () {},
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColor.firstGradientColor,
                                          AppColor.secondGradientColor,
                                        ],
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: ImageIcon(
                                      size: 40.h,
                                      color: Colors.white,
                                      const AssetImage(
                                        "assets/images/svgs/00-splash - 1-image2 2.png",
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0.h),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "طريق الكباش",
                          style: AppStyle.font24_700Weight.copyWith(
                            color: AppColor.darkText,
                            fontFamily: "Cairo",
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "الأقصر - مصر",
                              style: AppStyle.font12_600Weight.copyWith(
                                fontFamily: "Cairo",
                                color: AppColor.darkText,
                              ),
                            ),
                           const  SizedBox(
                              width: 4,
                            ),
                            SvgPicture.asset(
                              "assets/images/svgs/location_icon.svg",
                              color: AppColor.darkText,
                              width: 12.w,
                              height: 12.w,
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "متر 45.000",
                              style: AppStyle.font12_600Weight.copyWith(
                                fontFamily: "Cairo",
                                color: AppColor.darkText,
                              ),
                            ),
                            const   SizedBox(
                              width: 4,
                            ),
                            SvgPicture.asset(
                              "assets/images/svgs/distance_icon.svg",
                              color: AppColor.darkText,
                              width: 12.w,
                              height: 12.w,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w,),
            sliver: SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(12.0.h),
                child: Text(
                  textAlign: TextAlign.end,
                  "هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم\nولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر \nأو الكلمات العشوائية إلى النص",
                  style: AppStyle.font14_400Weight.copyWith(
                    color: AppColor.darkText,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: mediaQuery.size.height * .12,
              width: double.infinity,
              child: ListView.builder(
                reverse: true,
                itemCount: 15,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10.h),
                    width: 110.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      image: const  DecorationImage(
                        image: AssetImage("assets/images/pngs/splash.jpeg",),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(10.w),
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  Text(
                    textAlign: TextAlign.end,
                    "المراكز والعيادات الطبية",
                    style: AppStyle.font20_700Weight.copyWith(
                      color: AppColor.darkText,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  Container(
                    width: mediaQuery.size.width*.51,
                    height: 2,
                    decoration:const BoxDecoration(
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
            padding: EdgeInsets.all(10.w),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 12.0.w,
                crossAxisSpacing: 12.0.w,
                childAspectRatio: 2,
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
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.placesDetails,
                      );
                    },
                    child: MyCard(
                      withArrow: true,
                      radius: 12,
                      locationStyle: AppStyle.font16_700Weight.copyWith(color: AppColor.lightText),
                      titleStyle: AppStyle.font10_400Weight.copyWith(color: AppColor.lightText),
                      image: cards[index]['image']!,
                      location: cards[index]['location']!,
                      title: cards[index]['title']!,
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
