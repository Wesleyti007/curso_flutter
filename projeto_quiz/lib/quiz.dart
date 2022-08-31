import 'package:flutter/material.dart';
import 'package:projeto_quiz/question.dart';
import 'package:projeto_quiz/answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {Key? key,
      required this.quizSelected,
      required this.quizs,
      required this.whenToAnswer})
      : super(key: key);

  final int quizSelected;
  final List<Map<String, Object>> quizs;
  final void Function(int) whenToAnswer;

  bool get haveQuestionSelected {
    return quizSelected < quizs.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        haveQuestionSelected ? quizs[quizSelected].cast()['answer'] : [];
    return Column(
      children: <Widget>[
        Question(quizs[quizSelected]['text'].toString()),
        ...answers.map((t) => Answer(t['text'].toString(),
            () => whenToAnswer(int.parse(t['spots'].toString())))),
      ],
    );
  }
}
