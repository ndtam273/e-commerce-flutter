import 'package:e_commerce_flutter/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Sign Up"),), body: Body(),);
  }
}
