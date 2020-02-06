import 'package:flutter/material.dart';
import 'webviewcontainer.dart';

class Home extends StatelessWidget{
  final _links = ['https://google.com'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _links.map((link) => _urlbutton(context, link)).toList(),

          ),
        ),
      ),
    );
  }

  Widget _urlbutton(BuildContext context, String url){
    return Container(
      padding: EdgeInsets.all(21.1),
      child: FlatButton(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(horizontal: 51.1, vertical: 15.1),
        child: Text(url),
        onPressed: () => _handleUrlButtonPress(context, url),
      ),
    );
  }

  void _handleUrlButtonPress(BuildContext context, String url){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => WebViewContainer(url))
    );
  }

}