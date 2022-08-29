import 'package:flutter/material.dart';
import './question.dart';

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
  Widget build(BuildContext context){
    final List<String> quiz = [
      'Qual é a sua cor favorita ?',
      'Qual o seu animal favorito ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            Question(quiz[_quizSelected]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _answer,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _answer,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _answer,
            )
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