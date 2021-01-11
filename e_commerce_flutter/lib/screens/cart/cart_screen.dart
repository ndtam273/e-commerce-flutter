import 'package:e_commerce_flutter/components/default_button.dart';
import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';
import 'components/checkout_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text("${demoCarts.length} items",
              style: Theme.of(context).textTheme.caption),
        ],
      ),
    );
  }
}
