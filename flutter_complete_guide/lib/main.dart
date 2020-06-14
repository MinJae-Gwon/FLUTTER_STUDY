import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import './question.dart';
import './question.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questiontext': '이름이 무엇인가요?',
      'answers': [
        {'text': '김환희', 'score': 10},
        {'text': '김원희', 'score': 5},
        {'text': '김남희', 'score': 3},
        {'text': '김환타', 'score': 1},
      ]
    },
    {
      'questiontext': '고양이 이름은 무엇인가요?',
      'answers': [
        {'text': '떼껄룩', 'score': 5},
        {'text': '뽀리', 'score': 10},
        {'text': '애용이', 'score': 3},
        {'text': '권민재', 'score': 1},
      ]
    },
    {
      'questiontext': '좋아하는 음식은 무엇인가요?',
      'answers': [
        {'text': '엽떡 순한맛', 'score': 1},
        {'text': '핵불닭 볶음면', 'score': 5},
        {'text': '대창', 'score': 3},
        {'text': '샘겹샐', 'score': 10},
      ]
    },
  ];

  void _answerQuestion(int quizScore) {

    setState(() {
      _questionIndex++;
      _totalScore += quizScore;
    });

    if (_questionIndex < _questions.length) {
      //print("GO Go");
    } else {
      //print("you are done");
    }
    //print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  //quizScore: _totalScore,
                )
              : Result(_totalScore)),
    );
  }
}
