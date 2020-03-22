import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

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

  void _answerQuestion() {
    setState(() {
      //forces Flutter to re-run UI, updates THIS widget
      questionIndex++;
      if (questionIndex == 3) questionIndex = 0;
    }); //function that takes function as an argument

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Blue', 'Red', 'Yellow', 'Cyan']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Cat', 'Dog', 'Fish']
      },
      {
        'questionText': 'What\'s your favorite movie?',
        'answers': ['Als wir tanzen', 'Call me by your name', 'Ja\'i tue ma mere']
      },
    ];

    //returns a new Widget
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ), //Text is a widget
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText']), //!!
            ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion,answer);
            }).toList()
            // map executes a function on every element in the list
            // as List<String> - necessary for telling Dart that 'answers' is a list of strings
            // ... 
          ],
        ),
      ),
    );
  }
}
