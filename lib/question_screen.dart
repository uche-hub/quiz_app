import 'package:flutter/material.dart';
import 'package:quiz_app/aanswer_button.dart';
import 'package:quiz_app/data/queestions.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  var currentQuestionIndex = 0;

  void anserQuestion() {
    // currentQuestionIndex = currentQuestionIndex + 1;
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AanswerButton(
                answerText: answer,
                onTap: anserQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}
