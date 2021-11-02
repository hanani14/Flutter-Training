import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your fav food?', 'What\'s your fav animal?'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First Apps"),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('Answer 1'),
              ),
              RaisedButton(
                onPressed: () => print(
                    'Answer 2 chosen!'), //anonymous functions because don't have name of function
                child: Text('Answer 2'),
              ),
              RaisedButton(
                onPressed: () {
                  //anonymous functions because don't have name of function
                  print('Answer 3 chosen!');
                },
                child: Text('Answer 3'),
              ),
            ],
          )),
    );
  }
}
