import 'package:e_commerce_flutter/components/default_button.dart';
import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SZ.getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SZ.SizeConfig.screenHeight * 0.05,
              ),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text(
                "We sent your code to + 1 898 860 ***",
                textAlign: TextAlign.center,
              ),
              _buildTimer(),
              SizedBox(
                height: SZ.SizeConfig.screenHeight * 0.1,
              ),
              OtpForm(),
              SizedBox(
                height: SZ.SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  // resend otp code
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
