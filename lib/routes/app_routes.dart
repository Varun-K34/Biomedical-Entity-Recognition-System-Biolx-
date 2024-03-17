import 'package:flutter/material.dart';
import 'package:varun_s_application27/presentation/splash_screen/splash_screen.dart';
import 'package:varun_s_application27/presentation/home_screen/home_screen.dart';
import 'package:varun_s_application27/presentation/display_screen/display_screen.dart';
import 'package:varun_s_application27/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String homeScreen = '/home_screen';

  static const String displayScreen = '/display_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    homeScreen: (context) => HomeScreen(),
    displayScreen: (context) => DisplayScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
