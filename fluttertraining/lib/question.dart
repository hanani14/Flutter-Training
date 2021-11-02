import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final : this value not change after initialization in constructor
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
