import 'package:flutter/material.dart';
import '../question_list/question.dart';
import 'option.dart';
import '../colors.dart';

class QuestionPage extends StatefulWidget {
  final List<Question> q;
  const QuestionPage({@required this.q}) :  assert(q != null);
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int answer = 0;
  int response = 0;
  Color right = buttonColor;
  Color wrong = buttonColor;
  Color unanswered =buttonColor;

  @override
  void initState(){
    super.initState();
    answer = widget.q.elementAt(0).answer;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          width: 320.0,
          height: 500.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0),),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    widget.q.elementAt(0).question,
                    textAlign:TextAlign.center,
                    style: Theme.of(context).primaryTextTheme.display1,
                  ),
                ),

                Expanded(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(5.0),
                    crossAxisSpacing: 5.0,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Option(widget.q.elementAt(0).options.elementAt(0), 0, onPressed: showAns,),
                      Option(widget.q.elementAt(0).options.elementAt(1), 1, onPressed: showAns, color: right),
                      Option(widget.q.elementAt(0).options.elementAt(2), 2, onPressed: showAns,),
                      Option(widget.q.elementAt(0).options.elementAt(3), 3, onPressed: showAns,),
                    ]
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }

  showAns(value) {
    if (value == answer) {
      right =correctGreen;
    } 
  }
}