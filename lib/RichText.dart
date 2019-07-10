import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(CWidget());

class CWidget extends StatefulWidget {
  @override
  _CWidgetState createState() => _CWidgetState();
}

class _CWidgetState extends State<CWidget> {
  TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('test')),
        body: Text.rich(
          TextSpan(
              text: 'test1',
              style: TextStyle(color: _toggle ? Colors.red : Colors.blue, fontSize: 24.0),
              children: [TextSpan(text: 'test2')],
              recognizer: _tapGestureRecognizer
                ..onTap = () {
                  setState(() {
                    _toggle = !_toggle;
                  });
                }),
        ),
      ),
    );
  }
}
