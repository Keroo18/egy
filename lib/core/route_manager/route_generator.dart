
import 'package:flutter/material.dart';
import 'package:untitled2/core/route_manager/routes.dart';
import 'package:untitled2/layout/layout_view.dart';
import 'package:untitled2/screens/intro/intro_screen.dart';
import 'package:untitled2/screens/places_details/places_details.dart';
import 'package:untitled2/screens/splash/splash_screen.dart';

import '../../screens/directions/directions_screen.dart';

class RouteGenerator{
  static Route<dynamic> onGenerateRoute(RouteSettings setting)
  {
    switch(setting.name){
      case Routes.initial:
        return MaterialPageRoute(
            builder: (context) => const SplashScreen(),
    );
      case Routes.intro:
        return MaterialPageRoute(
          builder: (context) => const IntroScreen(),
        );
      case Routes.layout:
        return MaterialPageRoute(
          builder: (context) => const LayoutView(),
        );
      case Routes.directions:
        return MaterialPageRoute(
          builder: (context) => const DirectionsScreen(),
        );
      case Routes.placesDetails:
        return MaterialPageRoute(
          builder: (context) => const PlacesDetails(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

    }
  }
}