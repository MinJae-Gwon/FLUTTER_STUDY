import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get resultPhrase {
    var resultText = "";

    if (totalScore >= 30) {
      resultText = "Awesome!";
    } else if (totalScore >= 20) {
      resultText = "Great!";
    } else {
      resultText = "CheerUp!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text("You are finished!"),
        ),
        Center(
          child: Text('Total Score is ...${totalScore}'),
        ),
        Center(
          child: Text(resultPhrase),
        )
      ],
    );
  }
}
