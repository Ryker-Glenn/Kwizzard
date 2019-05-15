import 'package:flutter/foundation.dart';

enum Category{ course1, course2, course3, class_rank, logout, }

class Question{
  const Question({
    @required this.course,
    @required this.questionId,
    @required this.question,
    @required this.answer,
    @required this.time,
    @required this.options,
    @required this.explained,
  })  : assert(course != null),
        assert(questionId != null),
        assert(question != null),
        assert(answer != null),
        assert(time != null),
        assert(options != null),
        assert(explained != null);

  final Category course;
  final int questionId;
  final String question;
  final int answer;
  final int time;
  final List options;
  final String explained;

}