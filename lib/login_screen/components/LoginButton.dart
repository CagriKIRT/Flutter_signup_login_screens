import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required GlobalKey<FormState> formKey,
  })   : signupFormkey = formKey,
        super(key: key);

  final GlobalKey<FormState> signupFormkey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ))),
      onPressed: () {
        if (signupFormkey.currentState!.validate()) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Successfull Login')));
        }
      },
      child: Text('Log in'),
    );
  }
}
