import 'package:e_commerce_flutter/components/custom_suffix_icon.dart';
import 'package:e_commerce_flutter/components/default_button.dart';
import 'package:e_commerce_flutter/components/form_error.dart';
import 'package:e_commerce_flutter/components/no_account_text.dart';
import 'package:e_commerce_flutter/components/social_icon.dart';
import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_flutter/screens/sign_in/components/sign_form.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SZ.getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(
                  height: SZ.SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SZ.getProportionateScreenWidth(28)),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SZ.SizeConfig.screenHeight * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: SZ.SizeConfig.screenHeight * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcon(
                      img: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialIcon(img: "assets/icons/twitter.svg", press: () {}),
                    SocialIcon(img: "assets/icons/facebook-2.svg", press: () {})
                  ],
                ),
                SizedBox(
                  height: SZ.getProportionateScreenHeight(20),
                ),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
