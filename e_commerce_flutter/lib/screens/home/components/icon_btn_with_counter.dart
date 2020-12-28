import "package:flutter/material.dart";
import "package:e_commerce_flutter/size_config.dart" as SZ;
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key,
    @required this.svgSrc,
    this.numOfItem = 0,
    @required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfItem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(
              SZ.getProportionateScreenWidth(12),
            ),
            height: SZ.getProportionateScreenWidth(46),
            width: SZ.getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: SZ.getProportionateScreenWidth(16),
                width: SZ.getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                  child: Text(
                    "$numOfItem",
                    style: TextStyle(
                        fontSize: SZ.getProportionateScreenWidth(10),
                        color: Colors.white,
                        height: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
