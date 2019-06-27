import 'package:flutter/material.dart';

void main() => runApp(ListViewPage());


class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),

        ),
        body: ListView.separated(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(title: Text('$index'));
          },
          separatorBuilder: (context, index) {
            return new Divider();
          },
        )
      )
    );
  }
}