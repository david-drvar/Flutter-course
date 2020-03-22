import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']), //!!
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
        // map executes a function on every element in the list
        // as List<String> - necessary for telling Dart that 'answers' is a list of strings
        // ...
      ],
    );
  }
}
