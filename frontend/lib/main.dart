import 'package:flutter/material.dart';
import 'web_view_container.dart';
//import 'inappview.dart';
void main() => runApp(MyApp());class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Views',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Arial",
          textTheme: TextTheme(
              button: TextStyle(color: Colors.white, fontSize: 18.0))),
      home: WebViewContainer('https://protection-dev-app-v3.secondlifeasia.com/main_menu.html'),
    );
  }
}