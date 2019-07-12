import 'package:flutter/material.dart';

void main() => runApp(TipCaculatorPage());

class TipCaculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SizedBox(
            height: 100.0,
            width: 100.0,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
              color: Colors.red,
              child: Text('test'),
              )
            ,
          )        ),
      )
    );
  }
}
