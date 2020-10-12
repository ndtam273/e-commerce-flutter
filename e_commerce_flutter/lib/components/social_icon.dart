import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcon extends StatelessWidget {
  final String img;
  final Function press;
  const SocialIcon({
    Key key,
    this.img,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 15),
        padding: EdgeInsets.all(10),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF5F5F5),
        ),
        child: SvgPicture.asset(img),
      ),
    );
  }
}
