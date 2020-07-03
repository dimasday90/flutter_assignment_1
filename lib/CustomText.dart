import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final text;

  CustomText({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      text,
      style: TextStyle(
          color: Colors.green, fontSize: 28, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ));
  }
}
