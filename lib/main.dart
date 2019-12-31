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
      'answers': [
        {'answerText': 'Red', 'score': 10},
        {'answerText': 'White', 'score': 5},
        {'answerText': 'Green', 'score': 3},
      ],
    },
    {
      'questionText': 'What is your fave car?',
      'answers': [
        {'answerText': 'BMW', 'score': 10},
        {'answerText': 'AZLK', 'score': 5},
        {'answerText': 'KIA', 'score': 3},
        {'answerText': 'Ford', 'score': 1},
      ],
    },
    {
      'questionText': 'What is your fave song?',
      'answers': [
        {'answerText': 'DRDre', 'score': 10},
        {'answerText': 'XAC', 'score': 5},
        {'answerText': 'Green Gray', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
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
            : Result(_totalScore),
      ),
    );
  }
}
