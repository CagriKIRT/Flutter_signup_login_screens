import 'package:flutter/material.dart';

class LoginPasswordStatefullFieldTextWidget extends StatefulWidget {
  const LoginPasswordStatefullFieldTextWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  _LoginPasswordStatefullFieldTextWidgetState createState() =>
      _LoginPasswordStatefullFieldTextWidgetState();
}

class _LoginPasswordStatefullFieldTextWidgetState
    extends State<LoginPasswordStatefullFieldTextWidget> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 6, bottom: 3, right: 10),
      padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 10),
      decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: SizedBox(
        width: widget.width * 0.85,
        child: TextFormField(style: TextStyle(color: Colors.white),
          obscureText: _obscureText,
          decoration: new InputDecoration(
              prefixIcon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white70,
              ),
              prefixIconConstraints:
                  BoxConstraints(minHeight: 25, minWidth: 25),
              border: InputBorder.none,
              hintText: 'Password',
              suffixIcon: InkWell(
                onTap: _toggle,
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  size: 15.0,
                  color: Colors.black,
                ),
              ),
              suffixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 0),
              contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
              isDense: true),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Invalid Password';
            }
            return null;
          },
        ),
      ),
    );
  }
}
