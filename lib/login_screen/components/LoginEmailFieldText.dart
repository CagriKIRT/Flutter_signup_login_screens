import 'package:flutter/material.dart';

Container LoginEmailFieldText(double widthOfScreen) {
  return Container(
    margin: const EdgeInsets.only(left: 10, top: 6, bottom: 3, right: 10),
    padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 10),
    decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: SizedBox(
      width: widthOfScreen * 0.85,
      child: TextFormField(style: TextStyle(color: Colors.white),
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.white70,
            ),
            prefixIconConstraints: BoxConstraints(minHeight: 25, minWidth: 25),
            border: InputBorder.none,
            hintText: 'Email',
            contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
            isDense: true),
        validator: (value) {
          if (value == null || value.isEmpty || !value.contains('@')) {
            return 'Invalid Email';
          }
          return null;
        },
      ),
    ),
  );
}
