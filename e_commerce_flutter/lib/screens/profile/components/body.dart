import 'package:e_commerce_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter_svg/svg.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(
            height: 20,
          ),
          ProfileMenu(
            title: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Bell.svg",
            title: "Notifications",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Settings.svg",
            title: "Settings",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Question mark.svg",
            title: "Questions",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Log out.svg",
            title: "Log Out",
            press: () {},
          ),
        ],
      ),
    );
  }
}
