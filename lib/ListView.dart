import 'package:flutter/material.dart';

void main() => runApp(ListViewPage());


class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 80),
          child: AppBar(
            title: Text('ListView'),

          ),
        ),
        body: Column(
          children: <Widget>[
            ListTile(title: Text('商品列表')),
            Expanded(
                child:
                ListView.separated(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text('$index'));
                  },
                  separatorBuilder: (context, index) {
                    return new Divider();
                  },
                ),
            ),
          ],
        )
      )
    );
  }
}