import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/utils/constants/app_color.dart';
import 'package:untitled2/core/utils/constants/app_style.dart';
import 'package:untitled2/screens/directions/directions_screen.dart';
import 'package:untitled2/service_screen.dart';
import 'package:untitled2/specialties.dart';
import 'package:untitled2/vedios.dart';
import 'package:untitled2/who_we_are.dart';

import '../screens/home/home.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  LinearGradient selectedItemGradient = const LinearGradient(
    colors: [AppColor.firstGradientColor,AppColor.secondGradientColor], // Gradient colors for selected item
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> screensList=[
    const Home(),
    const Specialties(),
    const DirectionsScreen(),
    Vedios(title: "عيون وقرنية", percentageSizeFromWidth:.16,textStyle: AppStyle.font10_400Weight,iconPath: "assets/images/svgs/open-eye 1.png",),
    const WhoWeAre(),
    const ServiceScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15.0,
              offset: Offset(0, -1),
            ),
          ],
          gradient: selectedItemGradient,
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: AppColor.firstGradientColor,
          unselectedItemColor: AppColor.darkText,
          selectedLabelStyle: AppStyle.font12_400Weight,
          unselectedLabelStyle: AppStyle.font12_400Weight,
          iconSize: 24.h, // Adjusted size for visual alignment
          type: BottomNavigationBarType.fixed,



          onTap:(value){
            selectedIndex=value;
            setState((){

            });
          } ,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage(
                        'assets/images/svgs/home_buttom.png',
                    ),
                ),
                label: "الرئيسية",

            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/svgs/2buttom.png'),),
                label: "التخصصات"
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(

                    AssetImage('assets/images/svgs/3buttom.png')),
                label: "الواجهات",
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(

                    AssetImage('assets/images/svgs/4buttom.png')),
                label: "فيديوهات",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/svgs/5buttom.png')),
              label: "من نحن",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(

                  AssetImage('assets/images/svgs/6buttom.png')),
              label: "الخدمات",
            ),
          ],
        ),
      ),
    );
  }
}

