import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText = "Your Score is " + resultScore.toString() + "/5";
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
            child: Text("Restart QUIZ!"),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
