import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final widgets;

  App({this.widgets});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 7.0, right: 7.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: (widgets as List<Widget>).toList(),
      ),
    );
  }
}
