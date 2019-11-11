import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void questionAnswer(){
    print('Answer 1 Clicked');
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
        body:Column(
          children:[
            Text('The questions'),
            RaisedButton(child: Text('Answer 1'),onPressed: questionAnswer(),),
            RaisedButton(child: Text('Answer 1'),onPressed: null,),
            RaisedButton(child: Text('Answer 1'),onPressed: null,)
          ],
        ),
      ),
    );
  }
}
