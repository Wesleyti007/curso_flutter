import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  
  final texto;

  Question(this.texto); // Construtor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
       ),
    );
  }
}