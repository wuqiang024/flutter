import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(), body: buildBuilder()));
  }

  Builder buildBuilder() {
    return Builder(builder: (context) {
      return RaisedButton(onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('测试'), action: SnackBarAction(label: 'test', onPressed: () {})));
      });
    });
  }
}
