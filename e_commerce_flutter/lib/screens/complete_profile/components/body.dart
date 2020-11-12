import 'package:e_commerce_flutter/constants.dart';
import 'package:flutter/material.dart';

import 'complete_form.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SZ.getProportionateScreenWidth(16)),
        child: SingleChildScrollView(
                  child: Column(children: [
            Text("Complete Profile", style: headingStyle,),
            Text("Complete your details or continue \nwith social media", textAlign: TextAlign.center,),
            SizedBox(height: SZ.SizeConfig.screenHeight * 0.05,),
            CompleteForm(),
            SizedBox(height: SZ.getProportionateScreenHeight(30),),
            Text("By continuing your confirm that you agree \nwith our Term and Condition", textAlign: TextAlign.center,)
          ],),
        ),
      ),
    );
  }
}


