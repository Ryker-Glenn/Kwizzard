import 'package:flutter/material.dart';

import 'question_list/question_repository.dart';
import 'question_list/question.dart';
import 'supplemental/question_view.dart';

class HomePage extends StatelessWidget {
  final Category category;

  const HomePage({this.category: Category.course1});

  @override
  Widget build(BuildContext context) => QuestionPage(q: QuestionRepository.questionSelect(category));
}