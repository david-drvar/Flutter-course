import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

//every Widget in Flutter must extend StatelessWidget or StatefulWidget

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //this state belongs to MyApp( <> )
  var questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
    
  }

  void _answerQuestion(int score) {

    _totalScore+= score;

    setState(() {
      //forces Flutter to re-run UI, updates THIS widget
      questionIndex+= 2;
      // if (questionIndex == 3) questionIndex = 0;
    }); //function that takes function as an argument

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Blue', 'score': 10},
          {'text': 'Red', 'score': 3},
          {'text': 'Yellow', 'score': 333},
          {'text': 'Cyan', 'score': 30}
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Cat', 'score': -3},
          {'text': 'Dog', 'score' : 4},
          {'text' : 'Fish', 'score' : 2}
        ]
      },
      {
        'questionText': 'What\'s your favorite movie?',
        'answers': [
          {'text' : 'Als wir tanzen','score' : 10},
          {'text' : 'Call me by your name', 'score' : 10},
          {'text' : 'Ja\'i tue ma mere', 'score' : 10}
        ]
      },
    ];

    //returns a new Widget
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ), //Text is a widget
        body: questionIndex < _questions.length
            ? Quiz(
                questionIndex: questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
