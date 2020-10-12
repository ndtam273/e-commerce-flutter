import 'package:e_commerce_flutter/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_flutter/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

import '../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? ",
            style: TextStyle(fontSize: SZ.getProportionateScreenWidth(16))),
        GestureDetector(
          onTap: () {},
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: SZ.getProportionateScreenWidth(16)),
            ),
          ),
        ),
      ],
    );
  }
}
