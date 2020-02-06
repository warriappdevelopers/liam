import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/webviewcontainer.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Liam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Arial",
        textTheme: TextTheme(
          button: TextStyle(color: Colors.white, fontSize: 18),
          title: TextStyle(color: Colors.red)
        )
      ),
      home: WebViewContainer('https://liamfxtrade.com/bittoption_default.html'),
    );
  }
}