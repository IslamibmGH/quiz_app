import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp()); //only when only command in the main

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    // "const" is compile-time constant not like "final" which is runtime constant only
    {
      //a map for the questions and answers
      'questionText': 'What\'s your favorite color?',
      'answerText': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      //a map for the questions and answers
      'questionText': 'What\'s your favorite animal?',
      'answerText': [
        {'text': 'Dog', 'score': 2},
        {'text': 'Cat', 'score': 3},
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 15}
      ]
    },
    {
      //a map for the questions and answers
      'questionText': 'Who\'s your favorite Instructor?',
      'answerText': [
        {'text': 'Islam', 'score': 1},
        {'text': 'Paoey', 'score': 2},
        {'text': 'Ragab', 'score': 6},
        {'text': 'Rommel', 'score': 7}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override //
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //home is the core widget that runs when the app is started
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
