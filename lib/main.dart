import 'package:flutter/material.dart';

import 'signup_screen/Body.dart';

void main() {
  runApp(SingUpScreen());
}

class SingUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignUp',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Register'),
          ),
          body: SignupBody()),
    );
  }
}
