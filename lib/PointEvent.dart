import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: _body(),
    ));
  }

  Widget _body() {
    return Center(
      child: Listener(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(Size(300.0, 150.0)),
            child: Center(
              child: Text('child'),
            ),
          ),
          behavior: HitTestBehavior.opaque,
          onPointerDown: (event) {
            print(event);
          }),
    );
  }
}
