import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ProductImages(product: product);
  }
}
