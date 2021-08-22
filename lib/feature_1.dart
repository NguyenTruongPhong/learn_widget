import 'package:flutter/material.dart';

class Feature1 extends StatelessWidget {
  const Feature1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Text('Feature_1'),
        style: TextButton.styleFrom(
          primary: Colors.amber,
          backgroundColor: Colors.amberAccent,
        ),
      ),
    );
  }
}
