import 'package:flutter/material.dart';
import 'package:fluttertraining/answer.dart';
import 'package:fluttertraining/question.dart';
import 'package:fluttertraining/quiz.dart';
import 'package:fluttertraining/result.dart';

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
  var _questionIndex = 0;
  var _totalScore = 0;
  // use a 'final' if a value doesn't change from the point of time when you program runs. It's runtime constant value but when we're writing code we don't know what the final value will be
  // use a 'const' if you know value doesn't change during runtime and when write the code
  final _questions = const [
    {
      'questionText': 'What\'s your fav food?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    }, //map is collection of key-value pairs
    {
      'questionText': 'What\'s your fav animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Cat', 'score': 8},
        {'text': 'Lion', 'score': 7},
        {'text': 'Snake', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your fav person?',
      'answer': [
        {'text': 'Eubin', 'score': 8},
        {'text': 'NanNan', 'score': 6},
        {'text': 'Yan Wei', 'score': 9},
        {'text': 'Shaf', 'score': 10}
      ],
    }
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  //questions = []; //does not work if questions is a const

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;
    _totalScore = score + _totalScore;
    setState(() {
      _questionIndex += 1;
      print(_questionIndex);
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First Apps"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )

              // ? Column(
              //     children: [
              //       Question(questions[_questionIndex]['questionText']),
              //       ...(questions[questionIndex]['answer'] as List<String>)
              //           .map((answer) {
              //         ///... - it take a list which is exactly what we have here and the pull all the value s in the list out of it and add them to the surrounding list as individual values
              //         return Answer(answerQuestion, answer);
              //       }).toList()
              //       // Answer(
              //       //     answerQuestion), //function also can be pass using pointer. Answer pass answerQuestion() and Answer will accept the parameter of funcion
              //       // Answer(answerQuestion),
              //       // Answer(answerQuestion),
              //       // RaisedButton(
              //       //   onPressed: () => print(
              //       //       'Answer 2 chosen!'), //anonymous functions because don't have name of function
              //       //   child: Text('Answer 2'),
              //       // ),
              //       // RaisedButton(
              //       //   onPressed: () {
              //       //     //anonymous functions because don't have name of function
              //       //     print('Answer 3 chosen!');
              //       //   },
              //       //   child: Text('Answer 3'),
              //       // ),
              //     ],
              //   )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
