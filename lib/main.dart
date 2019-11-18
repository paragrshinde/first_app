import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';

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
  void questionAnswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var question = [
      'what\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: Column(
          children: [
            Question(question[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: questionAnswer,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: questionAnswer,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: questionAnswer,
            )
          ],
        ),
      ),
    );
  }
}
