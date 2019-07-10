import 'package:flutter/material.dart';

void main() => runApp(StfWidget('test'));

class StfWidget extends StatefulWidget {
  final String text;

  StfWidget(this.text);

  @override
  _StatefulWidgetState createState() => _StatefulWidgetState(text);
}

class _StatefulWidgetState extends State<StfWidget> {
  String text;

  _StatefulWidgetState(this.text);

  @override
  void initState() {
    super.initState();
    new Future.delayed(const Duration(seconds: 2), (){
      setState(() {
        text = '这就是修改后的数值';
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: _body()
      )
    );
  }

  Widget _body() {
    return Container(
      child: Text(text ?? '这就是有状态的值'),
    );
  }
}
