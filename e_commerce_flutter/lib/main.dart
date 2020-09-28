import 'package:e_commerce_flutter/routes.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'constants.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),

      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(
            headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18))),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: kTextColor,
      ),
      bodyText2: TextStyle(color: kTextColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-commerce"),
      ),
    );
  }
}
