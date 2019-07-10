import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp('test'));

class MyApp extends StatefulWidget {
  final String text;

  MyApp(this.text);

  @override
  _MyAppState createState() => _MyAppState(text);
}

class _MyAppState extends State<MyApp> {

  String text;

  _MyAppState(this.text);

  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds: 2), () {
      setState(() {
        text = '这就改变了变量2';
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('$text'),
        )
      )
    );
  }
}
