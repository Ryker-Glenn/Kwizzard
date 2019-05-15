import 'package:flutter/material.dart';

import 'question_list/question_repository.dart';
import 'question_list/question.dart';
import 'supplemental/question_view.dart';

class Landing extends StatelessWidget {
  final Category question;

  const Landing({this.question});

  @override
  Widget build(BuildContext context) => (question == null)
      ? Scaffold(
          body: Column(
            children: <Widget>[
              SizedBox(height: 120),
              Text(
                'No new question to answer!',
                style: Theme.of(context).textTheme.display1,
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
      : Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 80),
                Text(
                  'You have a new question to answer',
                  style: Theme.of(context).textTheme.headline,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Text('Tap below when you\'re ready',
                    style: Theme.of(context).textTheme.subhead,
                    textAlign: TextAlign.center),
                SizedBox(height: 100.0),
                RaisedButton(
                    child: Text('SHOW IT'),
                    elevation: 8.0,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuestionPage(
                                  q: QuestionRepository.questionSelect(
                                      question))));
                    }
                ),
              ],
            ),
          ),
        );
}
