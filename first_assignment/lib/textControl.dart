import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function textHandler;
  final int textsIndex;

  TextControl(this.textHandler, this.textsIndex);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Change text'),
      onPressed: textHandler,
    );
  }
}
