import 'package:e_commerce_flutter/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_flutter/screens/login_success/login_success_screen.dart';
import 'package:e_commerce_flutter/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_flutter/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce_flutter/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
