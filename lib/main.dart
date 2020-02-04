import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex ++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite colour?',
        'answers' : ['Red', 'Green', 'Yellow', 'Blue'],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers' : ['Cat', 'Dog', 'Rabbit', 'Hamster'],
      },
      {
        'questionText': 'What\'s your favourite music genre?',
        'answers' : ['Pop', 'Rock', 'Rap', 'Country'],
      },
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
          title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText']),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
      ],),
    ));
  }
}