// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  const Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['Score']), answer['Text'] as String);
        }).toList()
      ],
    );
  }
}
