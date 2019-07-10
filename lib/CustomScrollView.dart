import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
//        appBar: AppBar(
//          title: Text('test'),
//        ),
      body: _body(),
    ));
  }

  Widget _body() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('deomo'),
            background: Image.asset('images/test.jpg'),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10.0),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return new Container(
                  alignment: Alignment.center,
                  color: Colors.cyan,
                  child: Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ),
        SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('deomo2'),
            background: Image.asset('images/test.jpg'),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: new SliverChildBuilderDelegate((context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text('list item $index'),
            );
          }),
        )
      ],
    );
  }
}
