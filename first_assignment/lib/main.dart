// 1. Create a new Flutter app and output an AppBar and some text below it
// 2. Add a button which changes the text to any other text of your choice
// 3. Split the app into three widgets: App, TextControl & Text

import 'package:first_assignment/text.dart';
import 'package:first_assignment/textControl.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final texts = ['A bird ate a cat', 'Pommes Frittes'];
  int textsIndex = 0;

  void _changeText() {
    setState(() {
      textsIndex++;
      if (textsIndex == 2) textsIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Assignment Demo'),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              MyText(texts[textsIndex]),
              TextControl(_changeText, textsIndex)
            ],
          ),
        ),
      ),
    );
  }
}
