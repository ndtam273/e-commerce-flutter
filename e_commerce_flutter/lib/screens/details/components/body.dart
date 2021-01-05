import 'package:e_commerce_flutter/components/default_button.dart';
import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/models/Product.dart';
import 'package:e_commerce_flutter/screens/details/components/rounded_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter_svg/svg.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          Column(
            children: [
              TopRoundedContainer(
                color: Colors.white,
                child: ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
              ),
              Container(
                color: Colors.white,
                child: TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: SZ.SizeConfig.screenWidth * 0.15,
                              left: SZ.SizeConfig.screenWidth * 0.15,
                              top: SZ.getProportionateScreenHeight(15),
                              bottom: SZ.getProportionateScreenWidth(40),
                            ),
                            child: DefaultButton(
                              text: "Add to Cart",
                              press: () {},
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
