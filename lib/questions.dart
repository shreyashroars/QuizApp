import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  // ignore: use_key_in_widget_constructors
  const Question(Object? question, {required this.questionText});
  // const Question({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
