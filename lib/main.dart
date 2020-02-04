import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 12},
        {'text': 'Yellow', 'score': 9},
        {'text': 'Blue', 'score': 4}],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 8},
        {'text': 'Rabbit', 'score': 12},
        {'text': 'Hamster', 'score': 7}],
    },
    {
      'questionText': 'What\'s your favourite music genre?',
      'answers': [
        {'text': 'Pop', 'score': 12},
        {'text': 'Rock', 'score': 7},
        {'text': 'Rap', 'score': 10},
        {'text': 'Country', 'score': 3}],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
