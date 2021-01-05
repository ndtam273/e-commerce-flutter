import 'package:e_commerce_flutter/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

import '../../../constants.dart';
import 'rounded_icon_btn.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 0;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SZ.getProportionateScreenWidth(20),
        vertical: SZ.getProportionateScreenWidth(20),
      ),
      child: Row(children: [
        ...List.generate(
          product.colors.length,
          (index) => ColorDot(
            dotColor: product.colors[index],
            isSelect: selectedColor == index,
          ),
        ),
        Spacer(),
        RoundedIconBtn(
          iconData: Icons.remove,
          press: () {},
        ),
        SizedBox(
          width: 16,
        ),
        RoundedIconBtn(iconData: Icons.add, press: () {}),
      ]),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.dotColor,
    this.isSelect = false,
  }) : super(key: key);

  final Color dotColor;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      width: SZ.getProportionateScreenWidth(40),
      height: SZ.getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelect ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
      ),
    );
  }
}
