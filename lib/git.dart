import 'package:flutter/material.dart';

class Git extends StatelessWidget {
  const Git({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'git demo',
        style: TextStyle(
            color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      color: Colors.amber,
    );
  }
}
