// ignore_for_file: deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.spots, required this.restartQuiz})
      : super(key: key);

  final int spots;
  final void Function() restartQuiz;

  String get phaseResult {
    if (spots < 8) {
      return 'Parabens';
    } else if (spots < 12) {
      return 'Voce é bom';
    } else if (spots < 16) {
      return 'Impressionante';
    } else {
      return 'Lendario';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            child: Text(
          phaseResult,
          style: const TextStyle(fontSize: 28),
        )),
        FlatButton(
          child:
              const Text('Reiniciar ?',
                style: TextStyle(
                fontSize: 18)
              ),
          textColor: Colors.red,
          onPressed: restartQuiz,
        )
      ],
    );
  }
}
