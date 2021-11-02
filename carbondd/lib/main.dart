import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    print('answer choosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your fav food?', 'What\'s your fav animal?'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("my apps"),
          ),
          body: Column(
            children: [
              Text('The qestion!'),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('Answer 1'),
              ),
              RaisedButton(
                onPressed: () => print('Answer 2 chosen!'),  //anonymous functions because don't have name of function
                child: Text('Answer 2'),
              ),
              RaisedButton(
                onPressed: () {   //anonymous functions because don't have name of function
                  print('Answer 3 chosen!');
                },
                child: Text('Answer 3'),
              ),
            ],
          )),
    );
  }
}
