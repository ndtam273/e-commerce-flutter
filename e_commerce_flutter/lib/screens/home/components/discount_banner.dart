import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 90,
      margin: EdgeInsets.symmetric(
        horizontal: SZ.getProportionateScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: SZ.getProportionateScreenWidth(20),
        vertical: SZ.getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(TextSpan(
          text: "A Summer Surpise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: "Cashback 20%",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
          ])),
    );
  }
}
