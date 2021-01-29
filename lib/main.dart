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
      'questionText':
          "India is a federal union comprising twenty-nine states and how many union territories?",
      'answers': [
        {'text': '6', 'score': 0},
        {'text': '7', 'score': 1},
        {'text': '8', 'score': 0},
        {'text': '9', 'score': 0},
      ],
    },
    {
      'questionText':
          "Which of the following is the capital of Arunachal Pradesh?",
      'answers': [
        {'text': 'Itanagar', 'score': 1},
        {'text': 'Dispur', 'score': 0},
        {'text': 'Imphal', 'score': 0},
        {'text': 'Panaji', 'score': 0},
      ],
    },
    {
      'questionText': "What are the major languages spoken in Andhra Pradesh?",
      'answers': [
        {'text': 'English and Telugu', 'score': 0},
        {'text': 'Telugu and Urdu', 'score': 1},
        {'text': 'Telugu and Kannada', 'score': 0},
        {'text': 'All of the above languages', 'score': 0},
      ],
    },
    {
      'questionText': "What is the state flower of Haryana?",
      'answers': [
        {'text': 'Lotus', 'score': 1},
        {'text': 'Rhododendron', 'score': 0},
        {'text': 'Golden Shower', 'score': 0},
        {'text': 'Not declared', 'score': 0},
      ],
    },
    {
      'questionText':
          "Which of the following states is not located in the North?",
      'answers': [
        {'text': 'Jharkhand', 'score': 1},
        {'text': 'Jammu and Kashmir', 'score': 0},
        {'text': 'Himachal Pradesh', 'score': 0},
        {'text': 'Haryana', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestions(int score) {
    _totalScore += score;
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
