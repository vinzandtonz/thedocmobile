import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final result;
  final int totalScore;
  final Function resetQuiz;
  Result(this.result, this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are good !';
    } else if (totalScore <= 16) {
      resultText = 'Hmmm OK !';
    } else {
      resultText = 'Hmm hmm nope !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase + ' - Your score is : ' + totalScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz'), textColor: Colors.redAccent,)
        ],
      ),
    );
  }
}
