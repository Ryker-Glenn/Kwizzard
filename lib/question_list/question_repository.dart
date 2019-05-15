import 'question.dart';

class QuestionRepository {
  static List<Question> questionSelect(Category course) {
    const allQuestions = <Question> [
      Question(
        course: Category.course1,
        questionId: 0,
        question: "Which element is the most reactive?",
        time: 4,
        answer: 1,
        options: ['Oxygen', 'Hydrogen', 'Helium', 'Carbon'],
        explained: "I'm pretty sure this is right, it's only a test."
      ),
      Question(
        course: Category.course2,
        questionId: 1,
        question: "What smells the best?",
        time: 4,
        answer: 2,
        options: ['Old Grease', 'Dead Chicken', 'Lavender', 'Skunk Soup'],
        explained: "Lavender do smell pretty darn good",
      ),
      Question(
        course: Category.course3,
        questionId: 1,
        question: "Which one's the best answer?",
        time: 4,
        answer: 3,
        options: ['Try Again', 'Not this one', 'Nope', 'Pick this one'],
        explained: "I really hope you pressed the right one",
      ),
    ];
    return allQuestions.where((Question q) {
      return q.course == course;
    }).toList();
  }
}