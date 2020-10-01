import 'package:e_commerce_flutter/components/custom_suffix_icon.dart';
import 'package:e_commerce_flutter/components/default_button.dart';
import 'package:e_commerce_flutter/components/form_error.dart';
import 'package:e_commerce_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SZ.getProportionateScreenWidth(20)),
            child: Column(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SZ.getProportionateScreenWidth(28)),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SignForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String password;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmailFormField(),
          SizedBox(
            height: SZ.getProportionateScreenHeight(20),
          ),
          _buildPasswordFormField(),
          SizedBox(height: SZ.getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: SZ.getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              Text(
                "Forgot Password",
                style: TextStyle(decoration: TextDecoration.underline),
              )
            ],
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          ),
          SizedBox(height: SZ.getProportionateScreenHeight(50)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                img: "assets/icons/google-icon.svg",
              ),
              SocialIcon(
                img: "assets/icons/twitter.svg",
              ),
              SocialIcon(
                img: "assets/icons/facebook-2.svg",
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? "),
              Text(
                "Sign Up",
                style: TextStyle(color: kPrimaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextFormField _buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }

  TextFormField _buildEmailFormField() {
    return TextFormField(
        onSaved: (newValue) => email = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kAddressNullError)) {
            setState(() {
              errors.remove(kAddressNullError);
            });
          } else if (emailValidatorRegExp.hasMatch(value) &&
              errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kAddressNullError)) {
            setState(() {
              errors.add(kAddressNullError);
            });
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.add(kInvalidEmailError);
            });
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/Mail.svg",
            )));
  }
}

class SocialIcon extends StatelessWidget {
  final String img;
  const SocialIcon({
    Key key,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      padding: EdgeInsets.all(10),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF5F5F5),
      ),
      child: SvgPicture.asset(img),
    );
  }
}
