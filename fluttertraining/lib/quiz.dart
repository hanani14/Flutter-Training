import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertraining/answer.dart';
import 'package:fluttertraining/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions; //nested generic assigments
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          ///... - it take a list which is exactly what we have here and the pull all the value s in the list out of it and add them to the surrounding list as individual values
          return Answer(() => answerQuestion(answer['score']),
              answer['text'] as String); //anonymous
        }).toList()
      ],
    );
  }
}
