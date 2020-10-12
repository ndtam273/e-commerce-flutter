import 'package:e_commerce_flutter/screens/forgot_password/body.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static final routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
