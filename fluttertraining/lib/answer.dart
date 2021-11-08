import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthandler;
  final String answerText;
  Answer(this.selecthandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selecthandler,
        textColor: Colors.white,
        child: Text(answerText),
        color: Colors.blue,
      ),
    );
  }
}
