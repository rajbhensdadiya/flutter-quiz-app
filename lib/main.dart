import 'package:flutter/material.dart';
import './questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite color?",
      "What's your favourite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex], //use [index] instead of elementsAt
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
                child: Text("Answer 2"),
                onPressed:
                    _answerQuestions // () => print("Answer 2 chosen") //anonymous functions
                ),
            RaisedButton(
                child: Text("Answer 3"),
                onPressed:
                    _answerQuestions //() => print("Answer 3 chosen"), //anonymous functions,
                ),
            RaisedButton(
                child: Text("Answer 4"),
                onPressed:
                    _answerQuestions //() => print("Answer 4 chosen"), //anonymous functions,
                ),
          ],
        ),
      ),
    );
  }
}
