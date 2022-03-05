// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  int score = 0;
  Score({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 186, 156),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Your Score is :',
                style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Akaya',
                    color: Color.fromARGB(255, 249, 176, 63)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                score.toString(),
                style: TextStyle(
                    fontSize: 100,
                    fontFamily: 'Akaya',
                    color: Color.fromARGB(255, 102, 46, 145)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
