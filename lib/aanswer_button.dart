import 'package:flutter/material.dart';

class AanswerButton extends StatelessWidget {
  const AanswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(answerText),
    );
  }
}
