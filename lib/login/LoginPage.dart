import 'package:flutter/material.dart';
import 'package:test_drive/dashboard/DashboardPage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _dashboardScreen() {
    Navigator.pushAndRemoveUntil(
      context,
      new MaterialPageRoute(
          builder: (BuildContext context) => new DashboardPage()),
      (Route<dynamic> route) => false
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("LogiIIn"),
        ),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: "Emailasdfsdfas"),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(hintText: "Minha Senha"),
              ),
              SizedBox(height: 30.0),
              RaisedButton(
                child: new Text("Entrar....fdhd"),
                onPressed: _dashboardScreen,
              )
            ],
          ),
        ));
  }
}
