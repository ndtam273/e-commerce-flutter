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
          DiscountBanner(),
        ],
      ),
    ));
  }
}
