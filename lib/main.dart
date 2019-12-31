import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
final questions = const [
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
   if(_questionIndex < questions.length) {
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
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
