// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors

//import 'dart:html';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //var onPressed;
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.deepPurple,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
