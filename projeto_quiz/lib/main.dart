
import 'package:flutter/material.dart';

main() {
  runApp(QuestionApp());
}

class QuestionApp extends StatelessWidget {

  void answer() {
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
            Text(quiz[0]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: answer,
            )
          ],
          
        ),
      ),
    );
  }
}