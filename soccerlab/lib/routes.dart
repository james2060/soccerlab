import 'package:flutter/material.dart';
import 'screens/main_screens.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'screens/welcom_screen/welcome_screen.dart';
import 'screens/onboarding_screen/onboarding_screen.dart';

final Map<String, WidgetBuilder> route = {

  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreens.routeName: (context) => MainScreens(),
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  // SignInScreen.routeName: (context) => SignInScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen()
};

