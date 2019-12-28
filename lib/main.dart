import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion(){
    setState(() {
      questionIndex += 1;
    }); 
   print(questionIndex);
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
            Text(questions[questionIndex]),
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
              onPressed: (){
                print("Option # Three chosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
