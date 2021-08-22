import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final VoidCallback resetQuiz;
  Result({required this.totalScore, required this.resetQuiz});

  String get phraseResult {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'Phong dep trai';
    } else if (totalScore <= 15) {
      resultText = 'Phong rat dep trai';
    } else {
      resultText = 'Phong sieu dep trai';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            phraseResult,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text(
              'Reset Quiz',
              style: TextStyle(fontSize: 20.0),
            ),
            style: TextButton.styleFrom(
              shadowColor: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
