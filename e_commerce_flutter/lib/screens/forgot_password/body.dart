import 'package:e_commerce_flutter/components/custom_suffix_icon.dart';
import 'package:e_commerce_flutter/components/default_button.dart';
import 'package:e_commerce_flutter/components/form_error.dart';
import 'package:e_commerce_flutter/components/no_account_text.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/size_config.dart' as SZ;

import '../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        height: SZ.SizeConfig.screenHeight,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: SZ.getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SZ.SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SZ.getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SZ.SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
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
              ),
            ),
          ),
          SizedBox(height: SZ.getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SZ.SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: "Reset Password",
            press: () {
              if (_formKey.currentState.validate()) {
                
              }
            },
          ),
          SizedBox(height: SZ.SizeConfig.screenHeight * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}
