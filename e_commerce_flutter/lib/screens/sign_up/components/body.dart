import 'package:e_commerce_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
          child: Column(
        children: [
          Text(
            "Register Account",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(28),
                color: Colors.black),
          ),
          Text("Complete your details or continue \nwith social media", textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
