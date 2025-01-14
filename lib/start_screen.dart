import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.green,
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Learn Flutter the fun way",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              
            },
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, iconColor: Colors.white),
            icon: Icon(Icons.arrow_forward),
            label: Text(
              'Start Quiz',
            ),
          )
        ],
      ),
    );
  }
}
