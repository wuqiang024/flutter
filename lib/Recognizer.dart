import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(RecogonizerPage());

class RecogonizerPage extends StatefulWidget {
  @override
  _RecogonizerPageState createState() => _RecogonizerPageState();
}

class _RecogonizerPageState extends State<RecogonizerPage> {
  bool _toggle = true;
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();

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
      child: Text.rich(
        TextSpan(children: [
          TextSpan(
            text: 'test1',
          ),
          TextSpan(
            text: '点击变色',
            style: TextStyle(color: _toggle ? Colors.blue : Colors.red),
            recognizer: _tapGestureRecognizer..onTap = () {
              setState(() {
                _toggle = !_toggle;
              });
            },
          ),
        ]),
      ),
    );
  }
}
