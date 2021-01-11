import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.5),
            )
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  icon: SvgPicture.asset("assets/icons/Shop Icon.svg"),
                  onPressed: () {}),
              IconButton(
                  icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
                  onPressed: () {}),
              IconButton(
                  icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
                  onPressed: () {}),
              IconButton(
                icon: SvgPicture.asset("assets/icons/User Icon.svg"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
