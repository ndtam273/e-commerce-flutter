import 'package:e_commerce_flutter/components/default_button.dart';
import 'package:e_commerce_flutter/screens/home/home_screen.dart';
import 'package:e_commerce_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenWidth,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          Text(
            'Login Success',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(30),
                color: Colors.black),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
