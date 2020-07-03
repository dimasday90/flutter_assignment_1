// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './App.dart';
import './CustomText.dart';
import './TextControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _textIndex = 0;
  var _buttonText = 'Next';

  final textList = [
    'Good Morning',
    'Hello There',
    'This is my first flutter app',
    'Check my github for more ;)'
  ];

  void _changeText() {
    setState(() {
      if (_textIndex < textList.length - 1) {
        _textIndex += 1;
      } else {
        _textIndex = 0;
      }
      if (_textIndex == textList.length - 1) {
        _buttonText = 'Start Over';
      } else {
        _buttonText = 'Next';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('Greetings'),
              centerTitle: true,
            ),
            body: App(widgets: <Widget>[
              CustomText(text: textList[_textIndex]),
              TextControl(
                buttonText: _buttonText,
                textHandler: _changeText,
              )
            ]),
          ),
        ));
  }
}
