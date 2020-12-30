import 'package:e_commerce_flutter/models/Product.dart';
import 'package:e_commerce_flutter/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

import 'product_card.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular product", press: () {}),
        SizedBox(
          height: SZ.getProportionateScreenWidth(30),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular)
                  return ProductCard(
                    product: demoProducts[index],
                    press: () => Navigator.pushNamed(
                      context,
                      DetailsScreen.routeName,
                      arguments:
                          ProductDetailsArguments(product: demoProducts[index]),
                    ),
                  );
                return SizedBox.shrink();
              }),
              SizedBox(
                width: SZ.getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
