import 'package:flutter/material.dart';

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
    // TODO: implement build
    return Text('Question Screen');
  }
}
