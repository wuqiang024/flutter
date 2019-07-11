import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() => runApp(FutureBuilderPage());

class FutureBuilderPage extends StatefulWidget {
  @override
  _FutureBuilderPageState createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  bool _showResult = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: _body(),
    ));
  }

  Widget _body() {
    return Center(
      child: FutureBuilder(
        future: _showResult ? _getData() : null,
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          switch(snapshot.connectionState) {

            case ConnectionState.none:
              return RaisedButton(
                onPressed: () {
                  setState(() {
                    _showResult = true;
                  });
                },
                child: Text('开始'),
              );
              break;
            case ConnectionState.waiting:
              return CircularProgressIndicator();
              break;
            case ConnectionState.done:
              if(snapshot.hasError) {
                return Container(
                  child: Text('错误'),
                );
              } else {
                return Container(
                  child: Text('成功'),
                );
              }
              break;
            default:
              break;
          }
        },
      ),
    );
  }

  _getData() async {
    await Future.delayed(Duration(seconds: 1));
  }
}
