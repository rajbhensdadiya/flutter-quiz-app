import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestions() {
    setState(() {
      questionIndex += 1;
    });

    print(questionIndex);
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
            Text(
              questions
                  .elementAt(questionIndex), //use [index] instead of elementsAt
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestions,
            ),
            RaisedButton(
                child: Text("Answer 2"),
                onPressed:
                    answerQuestions // () => print("Answer 2 chosen") //anonymous functions
                ),
            RaisedButton(
                child: Text("Answer 3"),
                onPressed:
                    answerQuestions //() => print("Answer 3 chosen"), //anonymous functions,
                ),
            RaisedButton(
                child: Text("Answer 4"),
                onPressed:
                    answerQuestions //() => print("Answer 4 chosen"), //anonymous functions,
                ),
          ],
        ),
      ),
    );
  }
}
