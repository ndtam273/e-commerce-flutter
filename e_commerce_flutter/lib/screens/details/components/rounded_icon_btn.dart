import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key key,
    @required this.iconData,
    @required this.press,
  }) : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SZ.getProportionateScreenWidth(40),
      width: SZ.getProportionateScreenWidth(40),
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        color: Colors.white,
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
