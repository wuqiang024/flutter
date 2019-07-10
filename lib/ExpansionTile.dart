import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: _body(),
    ));
  }

  Widget _body() {
    return Center(
      child: Container(
        child: ExpansionTile(
          title: Text('test'),
          initiallyExpanded: true,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Text('test1'),
            )
          ],
        ),
      ),
    );
  }
}
