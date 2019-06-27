import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(),
        body:Builder(builder: (context){
          return Center(
            child: RaisedButton(onPressed: (){
              print(MediaQuery.of(context).toString());
            }),
          );
        })
      )
    );
  }
}
