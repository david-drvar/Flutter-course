import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;

  MyText(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
      ),
      textAlign: TextAlign.center,
    );
  }
}
