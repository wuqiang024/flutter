import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AlertDialog dialog = new AlertDialog(
    content: Text('hello world'),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Builder(builder: (context) {
      return Center(
        child: RaisedButton(onPressed: () {
          showDialog(context: context, builder: (context) => dialog);
        }),
      );
    })));
  }
}
