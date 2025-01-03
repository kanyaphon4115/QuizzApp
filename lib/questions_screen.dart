import 'package:flutter/material.dart';
import 'package:myapp/answer_button.dart';
import 'package:myapp/data/quiz.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = question[0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Colors.lightBlue,
              Color.fromARGB(255, 255, 178, 249)
            ],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(35),
            color: Colors.grey.withOpacity(0.4),
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  currentQuestion.question,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                ...currentQuestion.answers.map((answers) {
                  return AnswerButton(answers);
                })
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
