import 'package:flutter/material.dart';
import 'package:quiz_app/data/queestions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen; // caan also be null
  List<String> selectedAnswer = [];

  @override
  void initState() {
    // to reference the swicth screen
    activeScreen = StartScreen(swicthScreen);
    super.initState();
  }

  void swicthScreen() {
    setState(() {
      activeScreen = Question(
        onSleectAnswer: chooseAnswer,
      );
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = ResultScreen();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 67, 8, 169),
                const Color.fromARGB(255, 119, 48, 243)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: activeScreen),
      ),
    );
  }
}
