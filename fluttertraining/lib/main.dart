import 'package:flutter/material.dart';
import 'package:fluttertraining/answer.dart';
import 'package:fluttertraining/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // widget can re rebuilt
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //the state can be persistent
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
      print(questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your fav food?',
        'answer': ['Black', 'Red', 'Green', 'White'],
      }, //map is collection of key-value pairs
      {
        'questionText': 'What\'s your fav animal?',
        'answer': ['Rabbit', 'Cat', 'Lion', 'Snake'],
      },
      {
        'questionText': 'What\'s your fav animal?',
        'answer': ['Rabbit', 'Cat', 'Lion', 'Snake'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First Apps"),
          ),
          body: Column(
            children: [
              Question(questions[questionIndex]['questionText']),
              ...(questions[questionIndex]['answer'] as List<String>)
                  .map((answer) {
                ///... - it take a list which is exactly what we have here and the pull all the value s in the list out of it and add them to the surrounding list as individual values
                return Answer(answerQuestion, answer);
              }).toList()
              // Answer(
              //     answerQuestion), //function also can be pass using pointer. Answer pass answerQuestion() and Answer will accept the parameter of funcion
              // Answer(answerQuestion),
              // Answer(answerQuestion),
              // RaisedButton(
              //   onPressed: () => print(
              //       'Answer 2 chosen!'), //anonymous functions because don't have name of function
              //   child: Text('Answer 2'),
              // ),
              // RaisedButton(
              //   onPressed: () {
              //     //anonymous functions because don't have name of function
              //     print('Answer 3 chosen!');
              //   },
              //   child: Text('Answer 3'),
              // ),
            ],
          )),
    );
  }
}
