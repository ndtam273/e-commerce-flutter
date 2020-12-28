import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter/material.dart';

import 'discount_banner.dart';
import 'home_header.dart';

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
          Categories()
        ],
      ),
    ));
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"}
    ];
    return Container();
  }
}
