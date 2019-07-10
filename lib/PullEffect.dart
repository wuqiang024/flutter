import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController _controller;
  double _offset = 0.0;
  double _headerHeight = 200.0;

  double _getHeaderHeight() {
    if (_offset == null) return 0.0;
    if (_offset <= 0) {
      return min(max((_headerHeight - _offset), _headerHeight), 300.0);
    } else {
      return max(min((_headerHeight - _offset), _headerHeight), 50);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        _offset = _controller.offset;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: _body(),
          ),
        ),
      );
  }

  Widget _body() {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: _getHeaderHeight(),
//            color: Colors.blueAccent,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/test.jpg'),
                fit: BoxFit.cover,
                )),
          ),
        Expanded(
          child: ListView.builder(
            controller: _controller,
            itemCount: 30,
            itemBuilder: (context, index) {
              return ListTile(title: Text('$index'));
            },
            ),
          )
      ],
      );
  }
}
