import 'package:flutter/material.dart';
import 'web_view_container.dart';class Home extends StatelessWidget {
  final _links = ['https://protection-dev-app-v3.secondlifeasia.com/main_menu.html'];  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _links.map((link) => _handleURLButtonPress(context, url),
    ))));
  }  Widget _urlButton(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: TextButton(
          child: Text(url),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}