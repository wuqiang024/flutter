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
        home: SafeArea(
          child: Scaffold(
            body: _body(
            ),
            ),
        )
        );
  }

  Widget _body(
      ) {
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      itemBuilder:(context, index) {
        return ListTile(
          title: Text('item$index'),
        );
      },
      itemCount: 30,
      physics: BouncingScrollPhysics(),
      );
  }
}
