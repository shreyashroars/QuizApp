// ignore_for_file: use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'Text': 'Black', 'Score': 10},
        {'Text': 'Red', 'Score': 6},
        {'Text': 'Green', 'Score': 4},
        {'Text': 'White', 'Score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'Text': 'Rabbit', 'Score': 10},
        {'Text': 'Snake', 'Score': 8},
        {'Text': 'Elephant', 'Score': 6},
        {'Text': 'Lion', 'Score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favorite web-series?',
      'answers': [
        {'Text': 'Gotham', 'Score': 1},
        {'Text': 'Mirzapur', 'Score': 1},
        {'Text': 'Dark', 'Score': 1},
        {'Text': 'Stranger Things', 'Score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  int totalScore = 0;
  void reset() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print('NO more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(totalScore, reset),
      ),
    );
  }
}
