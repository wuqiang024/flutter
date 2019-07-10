import 'package:flutter/material.dart';

void main() => runApp(NotificationWidget());

class NotificationWidget extends StatefulWidget {
  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  String _progress = '0%';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text('Notification')), body: _body()));
  }

  Widget _body() {
    return Scrollbar(
        child: NotificationListener(
      onNotification: (ScrollNotification notification) {
        double progress = notification.metrics.pixels / notification.metrics.maxScrollExtent;
        setState(() {
          _progress = '${(progress * 100).toInt()}%';
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ListView.builder(
              itemCount: 100,
              itemExtent: 50.0,
              itemBuilder: (context, index) {
                return ListTile(title: Text('$index'));
              }),
          CircleAvatar(
            radius: 30.0,
            child: Text(_progress),
            backgroundColor: Colors.black54,
          )
        ],
      ),
    ));
  }
}
