

// ignore_for_file: avoid_print

//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
   void answerQuestion()
  {
      print('Answer chosen!');
    }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title:  const Text('HELLO HAIL DOWN TO SHREYASH'),
        ),
        body: Column(
           // ignore: prefer_const_literals_to_create_immutables
           children: [
           const Text('THE Question'),
             RaisedButton(child:const Text('Answer1'), onPressed: answerQuestion),
             RaisedButton(child:const Text('Answer2'), onPressed:answerQuestion),
            RaisedButton(child:const Text('Answer3'), onPressed: answerQuestion), 
          ],
        ),
      ),
    );
  }
}