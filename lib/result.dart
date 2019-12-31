import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetAction;
  Result(this.resultScore, this.resetAction);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = "You are cool";
    } else if (resultScore <= 12) {
      resultText = 'Not bad';
    } else if (resultScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'Bad boy';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetAction,
          ),
        ],
      ),
    );
  }
}
