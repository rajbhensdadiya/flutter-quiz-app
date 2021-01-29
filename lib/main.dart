import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's your favourite color?",
      'answers': ['blue', 'black', 'green', 'red'],
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': ['dog', 'cat', 'elephant', 'zebra'],
    },
    {
      'questionText': "What's your favourite hobby?",
      'answers': ['read', 'dance', 'sing', 'movies'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestions,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
