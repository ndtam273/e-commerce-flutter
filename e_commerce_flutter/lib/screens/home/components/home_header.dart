import 'package:e_commerce_flutter/screens/cart/cart_screen.dart';
import 'package:e_commerce_flutter/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SZ.getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItem: 3,
            press: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
