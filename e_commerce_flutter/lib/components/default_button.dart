import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

import '../constants.dart';
class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SZ.getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20)),
        onPressed: press,
        color: kPrimaryColor,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: SZ.getProportionateScreenWidth(18)),
        ),
      ),
    );
  }
}