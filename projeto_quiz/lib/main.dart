import 'package:flutter/material.dart';
import 'package:projeto_quiz/quiz.dart';
import './result.dart';

main() {
  runApp(const QuestionApp());
}

class _QuestionAppState extends State<QuestionApp> {
  var _quizSelected = 0;
  var _totalOfPoints = 0;

  final _quiz = const [
    {
      'text': 'Qual é a sua cor favorita ?',
      'answer': [
        {'text': 'Azul', 'spots': 10},
        {'text': 'Vermelho', 'spots': 5},
        {'text': 'Verde', 'spots': 3},
        {'text': 'Branco', 'spots': 1}
      ],
    },
    {
      'text': 'Qual o seu animal favorito ?',
      'answer': [
        {'text': 'Coelho', 'spots': 8},
        {'text': 'Elefante', 'spots': 9},
        {'text': 'Leao', 'spots': 7},
        {'text': 'Cobra', 'spots': 6}
      ],
    },
    {
      'text': 'Qual o seu instrutor favorito ?',
      'answer': [
        {'text': 'Maria', 'spots': 7},
        {'text': 'Joao', 'spots': 4},
        {'text': 'Leo', 'spots': 3},
        {'text': 'Ana', 'spots': 2}
      ],
    }
  ];

  void _answer(int spots) {
    if (haveQuestionSelected) {
      setState(() {
        _quizSelected++;
        _totalOfPoints += spots;
      });
    }
  }

  void _restartQuiz(){
    setState(() {
        _quizSelected = 0;
        _totalOfPoints = 0;
      });
  }


  bool get haveQuestionSelected {
    return _quizSelected < _quiz.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: haveQuestionSelected
            ? Quiz(
                quizs: _quiz,
                quizSelected: _quizSelected,
                whenToAnswer: _answer,
              )
            : Result(spots:_totalOfPoints, restartQuiz: _restartQuiz,),
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
