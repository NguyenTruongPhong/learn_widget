import 'package:flutter/material.dart';
import './question.dart';
import './Anwser.dart';

class Quiz extends StatelessWidget {
  final questionIndex;
  final List<dynamic> questions;
  final Function(int) anwserQuestion;

  Quiz(
      {required this.questionIndex,
      required this.questions,
      required this.anwserQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question: questions[questionIndex]['Question'] as String),
        ...((questions[questionIndex]['Awnser']) as List<Map<String, Object>>)
            .map(
          (awnser) {
            return Anwser(
                replyAnwser: () => anwserQuestion((awnser['core'] as int)),
                anwser: awnser['text'] as String);
          },
        ),
      ],
    );
  }
}
