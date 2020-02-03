import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex ++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
          title: Text(questions[questionIndex]),
      ),
      body: Column(
        children: [
          Text('The question!'),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion,),
          RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion,),
          RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion,),
      ],),
    ));
  }
}