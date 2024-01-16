import 'package:flutter/material.dart';
import 'package:quiz_app/Answer.dart';
import 'package:quiz_app/Question.dart';
import 'package:quiz_app/Quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var _index = 0;
  var questions = [
    {
      'questionText': 'What is your fav color?',
      'answers': ['Green', 'White', 'Blue', 'Pink']
    },
    {
      'questionText': 'What is your favorite pet?',
      'answers': ['Dog', 'Cat', 'Hamster', 'Rabbit']
    },
    {
      'questionText': 'What is your favourite city?',
      'answers': ['Scarborough', 'Downtown', 'Markham', 'Dundas']
    }
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Quiz App'),
            ),
            backgroundColor: Color.fromARGB(223, 186, 67, 210),
            body: _index < questions.length
                ? Center(
                    child: Quiz(questions, _index),
                  )
                : const Center(
                    child: Text('All Done'),
                  )));
  }
}
