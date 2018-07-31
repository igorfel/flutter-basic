import 'package:flutter/material.dart';
import 'package:test_drive/dashboard/DashboardPage.dart';
import 'package:test_drive/login/LoginPage.dart';
import 'package:test_drive/signup/SignupPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter com Igor',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    //setState(() {
    _counter++;
    //});
  }

  void _signupScreen() {
    Navigator.of(context).push(
        new MaterialPageRoute(builder: (BuildContext context) => new SignupPage()));
  }

  void _loginScreen() {
    Navigator.of(context).push(
        new MaterialPageRoute(builder: (BuildContext context) => new LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new SizedBox(
              child: new Text(
                "LOGO",
                style: new TextStyle(fontSize: 45.0),
              ),
              height: 300.0,
            ),
            new Padding(
                padding: EdgeInsets.all(30.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text(
                        "CADASTRO",
                      ),
                      onPressed: _signupScreen,
                    ),
                    new RaisedButton(
                      child: new Text(
                        "FAZER LOGIN",
                      ),
                      onPressed: _loginScreen,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
