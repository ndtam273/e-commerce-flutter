import 'package:e_commerce_flutter/components/custom_suffix_icon.dart';
import 'package:e_commerce_flutter/components/default_button.dart';
import 'package:e_commerce_flutter/components/form_error.dart';
import 'package:e_commerce_flutter/components/no_account_text.dart';
import 'package:e_commerce_flutter/components/social_icon.dart';
import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/screens/sign_up/components/sign_up_form.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: SZ.SizeConfig.screenHeight * 0.02,),
            Text(
              "Register Account",
              style: headingStyle,
            ),
            Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SZ.SizeConfig.screenHeight * 0.07,),
            SignUpForm(),
            SizedBox(
                    height: SZ.getProportionateScreenHeight(20),
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
            Text("By continuing you confirm that you agree \nwith our Term and Condition", textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}


