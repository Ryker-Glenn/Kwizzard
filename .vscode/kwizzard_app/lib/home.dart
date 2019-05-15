import 'package:flutter/material.dart';
import 'package:kwizzard_app/backdrop.dart';
import 'settings.dart';
import 'landing.dart';
import 'question_list/question.dart';

class HomePage extends StatelessWidget {
  final Category category;

  const HomePage({this.category});

  @override
  Widget build(BuildContext context) => (category == null)
      ? Backdrop(
          frontLayer: Landing(),
          backLayer: Settings(),
          frontTitle: Text('KWIZZARD'),
          backTitle: Text('MENU'),
        )
      : Backdrop(
          currentCategory: category,
          frontLayer: Landing(question: category),
          backLayer: Settings(),
          frontTitle: Text('KWIZZARD'),
          backTitle: Text('MENU'),
        );
}
