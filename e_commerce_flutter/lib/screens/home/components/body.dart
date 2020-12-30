import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/models/Product.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'product_card.dart';
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
          PopularProducts(),
          SizedBox(
            height: SZ.getProportionateScreenWidth(30),
          ),
        ],
      ),
    ));
  }
}
