import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AwesomeFloatingButton extends StatelessWidget {

  AwesomeFloatingButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: new Text("data", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      shape: CircleBorder(),
      elevation: 10.0,
      fillColor: Colors.teal,
    );
  }
}