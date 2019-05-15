import 'package:flutter/material.dart';
import '../colors.dart';


class Option extends StatelessWidget {

  final String value;
  final int i;
  final Color color;
  final Function onPressed;

  Option(this.value, this.i, {@required this.onPressed, this.color: buttonColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(35.0),
        ),
        onPressed: () {
          onPressed(value);
        },
        child: Text(
          value,
          style: Theme.of(context).primaryTextTheme.headline
        ),
      ),
    );
  }
}