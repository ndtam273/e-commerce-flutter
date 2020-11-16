import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SZ.getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              "OTP Verification",
              style: headingStyle,
            ),
            Text(
              "We sent your code to + 1 898 860 ***",
              textAlign: TextAlign.center,
            ),
            _buildTimer(),
            OtpForm(),
          ],
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

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: SZ.getProportionateScreenWidth(60),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              textAlign: TextAlign.center,
              onChanged: (value) {},
            ),
          ),
          SizedBox(
            width: SZ.getProportionateScreenWidth(60),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              textAlign: TextAlign.center,
              onChanged: (value) {},
            ),
          ),
          SizedBox(
            width: SZ.getProportionateScreenWidth(60),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              textAlign: TextAlign.center,
              onChanged: (value) {},
            ),
          ),
          SizedBox(
            width: SZ.getProportionateScreenWidth(60),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              textAlign: TextAlign.center,
              onChanged: (value) {},
            ),
          )
        ],
      ),
    );
  }
}
