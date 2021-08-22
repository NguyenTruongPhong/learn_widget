import 'package:flutter/material.dart';

class Anwser extends StatelessWidget {
  final VoidCallback replyAnwser;
  final String anwser;

  Anwser({required this.replyAnwser, required this.anwser});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: replyAnwser,
        child: Text('$anwser'),
        textColor: Colors.white,
        color: Colors.red,
      ),
    );
  }
}
