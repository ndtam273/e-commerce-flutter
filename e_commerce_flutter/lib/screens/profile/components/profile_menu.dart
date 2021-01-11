import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.press,
  }) : super(key: key);
  final String title, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                color: kPrimaryColor,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                title,
                style: TextStyle(color: kTextColor),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: kTextColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
