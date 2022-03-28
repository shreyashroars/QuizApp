// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  // ignore: use_key_in_widget_constructors
  const Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are insane';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          //textAlign: TextAlign.center,
        ),
        Center(
          child: FlatButton(
            onPressed: resetHandler,
            textColor: Colors.brown,
            child: const Text(
              'Restart Quiz',
              textAlign: TextAlign.right,
            ),
          ),
        )
      ],
    ));
  }
}
