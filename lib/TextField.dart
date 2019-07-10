import 'package:flutter/material.dart';

void main() => runApp(TextFieldWidget());

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('form')
        ),
        body: _body()
      )
    );
  }

  @override
  void initState() {
    _namecontroller.addListener((){
      print(_namecontroller.text);
    });
  }

  Widget _body() {
    return Theme(
      data: Theme.of(context).copyWith(
        hintColor: Colors.green,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.black38),
          hintStyle: TextStyle(color: Colors.black38)
        )
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _namecontroller,
              autofocus: true,
              decoration: InputDecoration(
                labelText: '用户名',
                helperText: '用户名或邮箱',
                prefix: Text('test'),
                prefixIcon: Icon(Icons.person),
                hintText: '用户名或邮箱2',
                hintStyle: TextStyle(color: Colors.black38)
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                prefixIcon: Icon(Icons.lock)
              ),
            ),
            Container(
              width: double.infinity,
              child: Text('test'),
              color: Colors.blue,
              margin: EdgeInsets.all(20.0)
            )
          ],
        ),
      ),
    );
  }
}
