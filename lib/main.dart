import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_widget/quiz.dart';
import './result.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _questionIndex = 0
  int _totalScore = 0;

  void _anwserQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final List _questions = const [
    {
      'Question': 'What is your favorite sports?',
      'Awnser': [
        {'text': 'Footbal', 'core': 10},
        {'text': 'volleyball', 'core': 8},
        {'text': 'basketball', 'core': 7},
      ],
    },
    {
      'Question': 'What is your favorite colors?',
      'Awnser': [
        {'text': 'red', 'core': 10},
        {'text': 'yellow', 'core': 8},
        {'text': 'orange', 'core': 7},
      ],
    },
    {
      'Question': 'Who is your idol?',
      'Awnser': [
        {'text': 'Ronaldo', 'core': 10},
        {'text': 'Ronaldo', 'core': 10},
        {'text': 'Ronaldo', 'core': 10},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        platform: TargetPlatform.android,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('My fist App'),
            centerTitle: true,
          ),
          body: (_questionIndex < _questions.length)
              ? Quiz(
                  anwserQuestion: _anwserQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(
                  totalScore: _totalScore,
                  resetQuiz: _resetQuiz,
                )),
    );
  }
}
