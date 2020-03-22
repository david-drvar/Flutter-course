import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; //final is not necessary since var won't change because it is a StatelessWidget!

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //as much width as it can get
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
