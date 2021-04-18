import 'package:flutter/material.dart';
import 'package:flutter_app/login_screen/components/LoginButton.dart';
import 'package:flutter_app/login_screen/components/LoginEmailFieldText.dart';
import 'package:flutter_app/login_screen/components/PasswordFieldText.dart';
import 'package:flutter_app/login_screen/components/SignupButton.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

final signupFormKeyTwo = GlobalKey<FormState>();

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Form(
        key: signupFormKeyTwo,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Image.asset('assets/images/login_image.png'),
              LoginEmailFieldText(width),
              LoginPasswordStatefullFieldTextWidget(
                width: width,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SignupButton(),
                  LoginButton(
                    formKey: signupFormKeyTwo,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
