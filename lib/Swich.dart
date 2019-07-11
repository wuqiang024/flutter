import 'package:flutter/material.dart';

void main() => runApp(SwitchPage());

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _switch = true;
  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('switch')
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: _switch,
              onChanged: (value) {
                setState(() {
                  _switch = value;
                });
              },
              ),
            Checkbox(
              value: _checkbox,
              activeColor: Colors.blue,
              onChanged: (value) {
                _checkbox = value;
              },
              )
          ],
          )
      )
    );
  }
}

