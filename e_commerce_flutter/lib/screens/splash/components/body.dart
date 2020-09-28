import 'package:e_commerce_flutter/components/default_button.dart';
import 'package:e_commerce_flutter/constants.dart';
import 'package:e_commerce_flutter/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_flutter/screens/splash/components/splash_content.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int current_page = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto. Let's shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people connect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    }
  ];
  @override
  void initState() {
    super.initState();
    current_page = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      current_page = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]["text"],
                    );
                  },
                  itemCount: splashData.length),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SZ.getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: splashData
                          .map((e) => _buildDot(index: splashData.indexOf(e)))
                          .toList(),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(text: "Continue", press: (){
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer _buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      height: 6,
      width: current_page == index ? 20 : 6,
      decoration: BoxDecoration(
          color: current_page == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}


