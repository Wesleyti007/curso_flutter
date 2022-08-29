import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() {
  runApp(QuestionApp());
}

class _QuestionAppState extends State<QuestionApp> {
  var _quizSelected = 0;

  void _answer() {
    setState(() {
      _quizSelected++;
    });

    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> quiz = [
      {
        'text': 'Qual é a sua cor favorita ?',
        'answer': ['Azul', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'text': 'Qual o seu animal favorito ?',
        'answer': ['Coelho', 'Elefante', 'Leao', 'Cobra'],
      },
      {
        'text': 'Qual o seu instrutor favorito ?',
        'answer': ['Maria', 'Joao', 'Leo', 'Ana'],
      }
    ];

    List<Widget> answer = [];

    for(String textAnswer in quiz[_quizSelected].cast() ['answer']) {
      print(textAnswer);
      answer.addAll(<Widget>[Answer(textAnswer, _answer)]);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: <Widget> [
            Question(quiz[_quizSelected]['text'].toString()),
           ...answer,
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  _QuestionAppState createState() {
    return new _QuestionAppState();
  }
}
