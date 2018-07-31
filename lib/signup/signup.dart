import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  Signup({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Signup createState() => new _Signup();
}

class _Signup extends State<Signup> {

  void _goBack (){
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Cadastro"),
      ),
      body: new Column(
        children: <Widget>[
          TextFormField(
            initialValue: "teste",
          )
        ],
      ),
    );
  }
}