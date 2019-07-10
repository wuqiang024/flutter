import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: _body(),
      )
    );
  }

  Widget _body() {
    return Container(
      width: double.infinity,
      height: 100.0,
      child: RaisedButton(
        onPressed: () {},
        child: Text('test'),
      ),
    );
  }
}
