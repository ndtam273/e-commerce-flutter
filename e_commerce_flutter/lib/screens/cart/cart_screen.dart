import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
      body: Body(),
    );
  }
}
