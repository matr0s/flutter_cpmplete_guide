import 'package:flutter/material.dart';

import './question.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Question 1', 'Question 2', 'Question 3'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First super App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text(questions[0]),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text(questions[1]),
              onPressed: () => print("Button pressed again"),
            ),
            RaisedButton(
              child: Text(questions[2]),
              onPressed: () {
                print("Option # Three chosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
