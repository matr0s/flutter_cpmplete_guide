import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your fave color?',
      'answers': ['Red', 'White', 'Green'],
    },
    {
      'questionText': 'What is your fave car?',
      'answers': ['BMW', 'AZLK', 'KIA', 'Ford'],
    },
    {
      'questionText': 'What is your fave song?',
      'answers': ['DRDre', 'XAC', 'Green Gray'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We still have questions in line');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First super App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
