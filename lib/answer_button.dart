import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerOption,{super.key});

  final String answerOption;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(color: Colors.black),
          backgroundColor: Colors.white, foregroundColor: Colors.grey),
      child: Text(answerOption),      
    );
  }
}
