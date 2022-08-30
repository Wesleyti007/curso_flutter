import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final text;

  // ignore: use_key_in_widget_constructors
  const Question(this.text); // Construtor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        text,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
