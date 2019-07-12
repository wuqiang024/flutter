import 'package:flutter/material.dart';

void main() => runApp(ScrollPage());

class ScrollPage extends StatefulWidget {
  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(title: Text('$index'));
          },
          itemCount: 100,
          itemExtent: 50.0,
          controller: _controller,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(_controller.positions.elementAt(0).pixels);
            _controller.animateTo(
              0.0,
              duration: Duration(seconds: 1),
              curve: Curves.ease,
            );
          },
        ),
      ),
    );
  }
}
