import 'package:flutter/material.dart';
import 'package:test_drive/Templates/WhatsApp/WhatsAppHome.dart';
import 'package:test_drive/components/awesomeButton.dart';
import 'package:test_drive/components/awesomeFloatingButton.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  var routes = <String, WidgetBuilder>{
    "/HomePage": (BuildContext context) => new MyHomePage(),
    "/WhatsHome": (BuildContext context) => new WhatsAppHome(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  void _openPage(){
    Navigator.of(context).pushReplacementNamed("/WhatsHome");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // appBar: new AppBar(
        //   // Here we take the value from the MyHomePage object that was created by
        //   // the App.build method, and use it to set our appbar title.
        //   title: new Text(widget.title),
        // ),
        body: Padding(
      padding: EdgeInsets.fromLTRB(0.0, 140.0, 0.0, 0.0),
      child: new Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3.0,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  boxShadow: [new BoxShadow(blurRadius: 5.0)]),
            ),
          ),
          SizedBox(
            height: 180.0,
          ),
          AwesomeButton(
            text: "WhatsApp Template",
            splashColor: Colors.green[900],
            onPressed: _openPage,
          ),
          AwesomeButton(
            text: "CADASTRO",
          ),
        ],
      ),
    ));
  }
}
