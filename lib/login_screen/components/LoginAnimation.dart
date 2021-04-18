import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginAnimationWidget extends StatelessWidget {
  const LoginAnimationWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Lottie.asset('assets/images/login.json',
          animate: true, reverse: true, repeat: true),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: height*0.4,
    );
  }
}