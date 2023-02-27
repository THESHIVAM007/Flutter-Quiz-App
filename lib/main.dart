import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = const [
    {
      'questionText': 'What\'s your fav. anime?',
      'answers': [
        {'text': 'Naruto', 'score': 9},
        {'text': 'Dragon ball', 'score': 7},
        {'text': 'One Piece', 'score': 9},
        {'text': 'Attack On Titan', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your fav. anime character?',
      'answers': [
        {'text': 'Naruto', 'score': 8},
        {'text': 'Goku', 'score': 9},
        {'text': 'Luffy', 'score': 7},
        {'text': 'Eren Yeager', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your fav. anime side character?',
      'answers': [
        {'text': 'Sasuke', 'score': 7},
        {'text': 'Vegeta', 'score': 9},
        {'text': 'Zoro', 'score': 10},
        {'text': 'Levi', 'score': 8}
      ],
    },
  ];
  var _index = 0;
  var _totalScore = 0;
  void _ansQues(int score) {
    _totalScore +=score; 
    setState(() {
      _index = _index + 1;
    });
    if (_index < _questions.length) {
      print('we have more questions');
    }
  }
  void _restart(){
    setState(() {
      _index = 0;
      _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" First app"),
        ),
        body: _index < _questions.length
            ? Quiz(
                ansQues: _ansQues,
                questions: _questions,
                index: _index,
              )
            : Result(_totalScore,_restart),
      ),
    );
  }
}
