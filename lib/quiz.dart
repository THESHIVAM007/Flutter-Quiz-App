

import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
class Quiz extends StatelessWidget {

final List<Map<String,Object>> questions;
final int index;
final Function ansQues;
Quiz({required this.ansQues, required this.questions,required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(
              questions[index]['questionText'] as String,
            ),
            ...(questions[index]['answers'] as List<Map<String,Object>>).map((answer){
              return Answer(()=>ansQues(answer['score']), answer['text'] as String);
            }).toList(),
          ],
        );
  }
}