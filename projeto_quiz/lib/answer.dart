// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelected;

  // ignore: use_key_in_widget_constructors
  const Answer(this.text, this.onSelected);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: onSelected,
        child: Text(text),
      ),
    );
  }
}
