import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function indexHandler;
  final String answerText;

  Answer(this.indexHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0)
        ),
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: indexHandler,
      ),
    );
  }
}
