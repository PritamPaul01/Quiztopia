// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'question.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'score.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  QuestionBank question = QuestionBank();

  List<Icon> scoreKepper = [];
  int scoreCount = 0;

  void checkAnswer(bool userpicked) {
    if (question.isFinished()) {
      Fluttertoast.showToast(msg: "Quiz Ended", gravity: ToastGravity.BOTTOM);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Score(score: scoreCount)));
    }

    setState(() {
      if (userpicked == question.getAnswer()) {
        scoreCount++;
        scoreKepper.add(Icon(Icons.check, color: Colors.green[700]));
      } else {
        scoreKepper.add(Icon(
          Icons.close,
          color: Colors.red[700],
        ));
      }
      question.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // ignore: prefer_const_constructors
        leading: Hero(
          tag: 'logo',
          // ignore: prefer_const_constructors
          child: CircleAvatar(
            backgroundImage: AssetImage('images/q1.jpg'),
          ),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
          'QUIZTOPIA',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                    child: Text(
                  question.getQuestion(),
                  style: TextStyle(
                      color: Colors.black, fontSize: 30, fontFamily: 'Akaya'),
                )),
              )),
          Expanded(
            flex: 1,
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'True',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
            ),
          ),
          Row(children: scoreKepper)
        ],
      ),
    );
  }
}
