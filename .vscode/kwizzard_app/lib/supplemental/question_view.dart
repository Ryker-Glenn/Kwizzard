import 'package:flutter/material.dart';
import 'package:kwizzard_app/home.dart';
import '../question_list/question.dart';
import '../colors.dart';

class QuestionPage extends StatefulWidget {
  final List<Question> q;
  const QuestionPage({@required this.q}) : assert(q != null);
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  String answer, response, op1, op2, op3, op4;
  bool a1, a2, a3, a4;
  Color cl = buttonColor;

  @override
  void initState() {
    super.initState();
    answer = widget.q.elementAt(0).answer;
    op1 = widget.q.elementAt(0).options.elementAt(0);
    op2 = widget.q.elementAt(0).options.elementAt(1);
    op3 = widget.q.elementAt(0).options.elementAt(2);
    op4 = widget.q.elementAt(0).options.elementAt(3);
    a1 = false;
    a2 = false;
    a3 = false;
    a4 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 140.0),
            Text(
              widget.q.elementAt(0).question,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.display1,
            ),
            SizedBox(height: 40.0),
            ButtonTheme(
              minWidth: 150.0,
              height: 50.0,
              child: RaisedButton(
                  child: Text(op1,
                      style: a1
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black)),
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  color: (a1) ? cl : buttonColor,
                  onPressed: () {
                    setState(() {
                      a1 = !a1;
                      (op1 == answer) ? cl = Colors.green : cl = Colors.red;
                    });
                  }),
            ),
            SizedBox(height: 7.0),
            ButtonTheme(
              minWidth: 150.0,
              height: 50.0,
              child: RaisedButton(
                  child: Text(op2,
                      style: a2
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black)),
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  color: (a2) ? cl : buttonColor,
                  onPressed: () {
                    setState(() {
                      a2 = !a2;
                      (op2 == answer) ? cl = Colors.green : cl = Colors.red;
                    });
                  }),
            ),
            SizedBox(height: 7.0),
            ButtonTheme(
              minWidth: 150.0,
              height: 50.0,
              child: RaisedButton(
                  child: Text(op3,
                      style: a3
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black)),
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  color: (a3) ? cl : buttonColor,
                  onPressed: () {
                    setState(() {
                      a3 = !a3;
                      (op3 == answer) ? cl = Colors.green : cl = Colors.red;
                    });
                  }),
            ),
            SizedBox(height: 7.0),
            ButtonTheme(
              minWidth: 150.0,
              height: 50.0,
              child: RaisedButton(
                  child: Text(op4,
                      style: a4
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black)),
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  color: (a4) ? cl : buttonColor,
                  onPressed: () {
                    setState(() {
                      a4 = !a4;
                      (op4 == answer) ? cl = Colors.green : cl = Colors.red;
                    });
                  }),
            ),
            SizedBox(height: 40),
            RaisedButton(
                child: Text('FINISH'),
                elevation: 8.0,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
          ],
        ),
      ),
    ));
  }
}
