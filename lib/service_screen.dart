import 'package:flutter/material.dart';
import 'package:untitled2/core/utils/constants/app_style.dart';
import 'package:untitled2/core/widgets/medical_specialties.dart';
import 'package:untitled2/vedios.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery =MediaQuery.of(context);
    return Center(child: MedicalSpecialties(title: "زراعة أسنان", textStyle: AppStyle.font10_400Weight, percentageSizeFromWidth: .18, iconPath: "assets/images/svgs/open-eye 1.png"));

  }
}
