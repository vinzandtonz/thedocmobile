import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestionHandler;
  final String answer;
  Answer(this.answerQuestionHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: answerQuestionHandler,
        child: Text(answer),
      ),
    );
  }
}
