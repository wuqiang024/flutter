import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener((){
      print(_scrollController.offset);
    });
  }

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
    return ListView.builder(
      controller: _scrollController,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('item $index'),
        );
      },
      itemCount: 20,
      itemExtent: 50.0,
    );
  }
}
