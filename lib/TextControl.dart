import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final buttonText;
  final textHandler;

  TextControl({this.buttonText, this.textHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          child: Text(buttonText),
          onPressed: textHandler,
          color: Colors.green,
        ));
  }
}
