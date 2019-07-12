import 'package:flutter/material.dart';

void main() => runApp(InfiniteListView());

class InfiniteListView extends StatefulWidget {
  @override
  _InfiniteListViewState createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static String loadingTag = '##loading##';
  var _words = <String>[loadingTag];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _retriveData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            if (_words[index] == loadingTag) {
              if (_words.length - 1 < 50) {
                _retriveData();
                return Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return Container(
                  alignment: Alignment.center,
                  child: Text('没有更多了'),
                );
              }
            } else {
              return ListTile(title: Text(_words[index]));
            }
          },
          separatorBuilder: (context, index) {
            return Divider(height: 0.0);
          },
          itemCount: _words.length,
        ),
      ),
    );
  }

  void _retriveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(_words.length - 1, List.generate(10, (index) {
        return '$index';
      }).toList());
      setState(() {

      });
    });
  }
}
