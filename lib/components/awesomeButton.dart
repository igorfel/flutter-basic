import 'package:flutter/material.dart';

class AwesomeButton extends StatelessWidget {

  AwesomeButton({@required this.text, this.textColor, this.backgroundColor, this.splashColor, @required this.onPressed});

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Color splashColor;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: splashColor ?? Colors.orange,
      onTap: onPressed,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(20.0),
        width: double.infinity,
        height: 50.0,
        child: Center(
            child:
                Text(text, style: TextStyle(fontWeight: FontWeight.bold))),
      ),
    );
  }
}
