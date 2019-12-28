import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void answerQuestion(){
  print('Answer choosen!!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Question 1', 'Question 2', 'Question 3'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My super App'),
        ),
        body: Column(
          children: [
            Text('My questions'),
            RaisedButton(
              child: Text(questions[0]),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text(questions[1]),
              onPressed: () => print("Button pressed again"),
            ),
            RaisedButton(
              child: Text(questions[2]),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
