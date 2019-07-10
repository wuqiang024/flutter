import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _operationText = 'test';
  double _left = 0;
  double _top = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('test'),
          ),
          body: _body()),
    );
  }

  Widget _body() {
    return GestureDetector(
      child: Stack(children: [
        Positioned(
          left: _left,
          top: _top,
          child: Container(
            width: 300.0,
            height: 150.0,
            color: Color(0xffff3366),
            child: Text('$_operationText'),
          ),
        ),
      ]),
      onTap: () => _updateText('onTap'),
      onLongPress: () => _updateText('onLongPress'),
      onPanDown: (DragDownDetails e) => _updateText('onPanDown'),
      onPanUpdate: (DragUpdateDetails e) {
        setState(() {
          _left += e.delta.dx;
          _top += e.delta.dy;
        });
      },
    );
  }

  void _updateText(String text) {
    setState(() {
      _operationText = text;
    });
  }
}
