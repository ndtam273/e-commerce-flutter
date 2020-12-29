import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/models/Product.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'section_title.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: SZ.getProportionateScreenWidth(20),
          ),
          HomeHeader(),
          SizedBox(
            height: SZ.getProportionateScreenWidth(20),
          ),
          DiscountBanner(),
          SizedBox(
            height: SZ.getProportionateScreenWidth(30),
          ),
          Categories(),
          SizedBox(
            height: SZ.getProportionateScreenWidth(30),
          ),
          SpecialOffers(),
          SizedBox(
            height: SZ.getProportionateScreenWidth(30),
          ),
          SectionTitle(text: "Popular product", press: () {}),
          SizedBox(
            width: SZ.getProportionateScreenWidth(140),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                    padding: EdgeInsets.all(SZ.getProportionateScreenWidth(20)),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      demoProducts[0].images[0],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  demoProducts[0].title,
                  style: TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${demoProducts[0].price}",
                      style: TextStyle(
                          fontSize: SZ.getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor),
                    ),
                    Container(
                      padding: EdgeInsets.all(
                        SZ.getProportionateScreenWidth(8),
                      ),
                      width: SZ.getProportionateScreenWidth(28),
                      height: SZ.getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/Heart Icon_2.svg"),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
