import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: SZ.getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFF5F6F9),
              ),
              child: Image.asset(
                demoCarts[0].product.images[0],
              ),
            ),
          ),
        ),
        SizedBox(
          width: SZ.getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              demoCarts[0].product.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Text.rich(
              TextSpan(
                text: "\$${demoCarts[0].product.price}",
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
