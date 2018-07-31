import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignupPageState createState() => new _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Alterei :)"),
        ),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: new Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: "Nome"),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: "Email"),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(hintText: "Password"),
              ),
              SizedBox(height: 30.0),
              RaisedButton(
                child: new Text("okkk"),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
