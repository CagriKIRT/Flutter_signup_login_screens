import 'package:flutter/material.dart';
import 'package:flutter_app/signup_screen/components/EmailFieldText.dart';
import 'package:flutter_app/signup_screen/components/LoginButton.dart';
import 'package:flutter_app/signup_screen/components/PasswordFieldText.dart';
import 'package:flutter_app/signup_screen/components/SignupAnimation.dart';
import 'package:flutter_app/signup_screen/components/SubmitButton.dart';
import 'package:flutter_app/signup_screen/components/UserFieldText.dart';
import 'package:lottie/lottie.dart';

class SignupBody extends StatefulWidget {
  @override
  _SignupBodyState createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SignUpAnimationWidget(height: height),
              userFieldText(width),
              emailFieldText(width),
              PasswordStatefullFieldTextWidget(width: width),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SubmitButton(formKey: _formKey),
                  LoginButton(),
                ],
              ),
            ],
          ),
        ));
  }
}


//Image.asset('assets/images/signup_image.png')
