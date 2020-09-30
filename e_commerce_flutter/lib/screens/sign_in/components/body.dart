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
    return SafeArea(
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
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = ["Demo Errors"];
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        _buildEmailFormField(),
        SizedBox(
          height: SZ.getProportionateScreenHeight(20),
        ),
        _buildPasswordFormField(),
        SizedBox(height: SZ.getProportionateScreenHeight(20)),
        FormError(errors: errors),
        DefaultButton(
          text: "Continue",
          press: () {
            if (_formKey.currentState.validate()) {
              _formKey.currentState.save();
            }
          },
        )
      ],
    ));
  }

  TextFormField _buildPasswordFormField() {
    return TextFormField(
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
        validator: (value) {
          if (value.isEmpty) {
            setState(() {
              errors.add("Please enter your email");
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
