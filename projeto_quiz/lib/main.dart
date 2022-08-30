import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

main() {
  runApp(const QuestionApp());
}

class _QuestionAppState extends State<QuestionApp> {
  var _quizSelected = 0;

  final _quiz = const [
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

  void _answer() {
    if (haveQuestionSelected) {
      setState(() {
        _quizSelected++;
      });
    }
  }

  bool get haveQuestionSelected {
    return _quizSelected < _quiz.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answer =
        haveQuestionSelected ? _quiz[_quizSelected].cast()['answer'] : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: haveQuestionSelected
            ? Column(
                children: <Widget>[
                  Question(_quiz[_quizSelected]['text'].toString()),
                  ...answer.map((t) => Answer(t, _answer)).toList(),
                ],
              )
            : const Result(),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
