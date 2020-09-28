import 'package:e_commerce_flutter/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_flutter/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};