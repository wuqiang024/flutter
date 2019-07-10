import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showResult = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return Container(
      alignment: Alignment.center,
      child: FutureBuilder(
        future: _showResult ? _fetch() : null,
        builder: (context, snapshot) {
          switch(snapshot.connectionState) {
            case ConnectionState.none:
                return RaisedButton(
                  onPressed: () {
                    setState(() {
                      _showResult = true;
                    });
                  },
                  child: Text('press'),
                );
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.done:
              if(snapshot.hasError) {
                return Text('error');
              } else  {
                return Text('test');
              }
              break;
            default:
              break;

          }
        },
      ),
    );
  }

  Future<Map> _fetch() async {
    return (await Dio().get('https://jsonplaceholder.typicode.com/users/1')).data;
  }
}
