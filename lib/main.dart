import 'package:flutter/material.dart';
import './Question.dart';

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

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Renew App'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex],
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Anser 1'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Anser 2'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Anser 3'),
            )
          ],
        ),
      ),
    );
  }
}
