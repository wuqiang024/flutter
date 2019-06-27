import 'package:flutter/material.dart';

void main() => runApp(ButtonWidget());

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Container(
                    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          elevation: 5.0,
          highlightElevation: 2.0,
          shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(20.0)),
          child: Text('Click Me'),
        ),
        FlatButton(onPressed: () {},
            textColor: Colors.white,

                       child: Text('click me'),
                       color: Color(0xFFFF6633))
      ],
    )))));
  }
}
