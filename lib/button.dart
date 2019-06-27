import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main(
    ) {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(
      BuildContext context
      ) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: Wrap(
                children: <Widget>[
                  buildRaisedButton(
                  )
                ],
                ),
              )
            )
        );
  }

  RaisedButton buildRaisedButton(
      ) {
    return RaisedButton(
      padding: EdgeInsets.all(
          10.0
          ),
      child: Text(
          'RaisedButton'
          ),
      color: Colors.white,
      textColor: Colors.teal,
      disabledColor: Colors.grey,
      highlightElevation: 20.0,
      highlightColor: Colors.white,
      disabledTextColor: Colors.black87,
      splashColor: Colors.orange,
//                shape: CircleBorder(),
      onPressed: (
          ) {
        print(
            'RaisedButton'
            );
      },
      );
  }
}
