import 'package:flutter/material.dart';
import './answer.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restart;

  Result(this.resultScore, this.restart);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'Lmao Noob';
    } else if (resultScore < 26) {
      resultText = 'Pretty Solid';
    } else {
      resultText = 'chad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: restart,
            child: Text('Restart Quiz',style: TextStyle(color: Colors.brown),),          )
        ],
      ),
    );
  }
}
