import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter_svg/svg.dart';

import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Color(0xFFF5F6F9),
            onPressed: () {},
            child: Row(
              children: [SvgPicture.asset("assets/icons/User Icon.svg")],
            ),
          ),
        ),
      ],
    );
  }
}
