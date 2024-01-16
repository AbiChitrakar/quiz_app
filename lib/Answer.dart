import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;

  const Answer(this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: null,
        child: Text(answer),
      ),
    );
  }
}
