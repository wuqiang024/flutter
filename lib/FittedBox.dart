import 'package:flutter/material.dart';

void main(
    ) =>
    runApp(
        MyApp(
        )
        );

class MyApp extends StatelessWidget {
  @override
  Widget build(
      BuildContext context
      ) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
                'Test'
                ),
            ),
          body: _body(
          ),
          )
        );
  }

  Widget _body(
      ) {
    return FittedBox(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: _getWidgets(),
        ),
        ),
      );
  }

  List<Widget> _getWidgets() {
    return List<Widget>.generate(20, (i) {
      return RaisedButton(
        onPressed: () {},
        child: Text('press${i}'),
      );
    });
  }
}
