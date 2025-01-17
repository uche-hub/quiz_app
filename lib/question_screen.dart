import 'package:flutter/material.dart';
import 'package:quiz_app/aanswer_button.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The Question.....',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          AanswerButton(answerText: "Answer 1", onTap: () {}),
          AanswerButton(answerText: "Answer 2", onTap: () {}),
          AanswerButton(answerText: "Answer 3", onTap: () {})
        ],
      ),
    );
  }
}
