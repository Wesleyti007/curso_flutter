import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  
  final texto;

  Question(this.texto); // Construtor

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}