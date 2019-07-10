import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: _body(),
      )
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (panelIndex, isExpanded) {
          setState((){
            print(panelIndex);
            _index = panelIndex;
          });
        },
        children: [
          ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: Text('标题1')
              );
            },
            body: Container(
              child: Text('test'),
            ),
            isExpanded: _index == 0,
          ),
          ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return ListTile(
                  title: Text('标题1')
                  );
            },
            body: Container(
              child: Text('test'),
              ),
            isExpanded: _index == 1,
            )
        ],
      ),
    );
  }
}
