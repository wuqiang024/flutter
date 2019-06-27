import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

void main() => runApp(WebSocketWidget());

class WebSocketWidget extends StatefulWidget {
  @override
  _WebSocketWidgetState createState() => _WebSocketWidgetState();
}

class _WebSocketWidgetState extends State<WebSocketWidget> {
  TextEditingController _controller = new TextEditingController();
  IOWebSocketChannel channel = new IOWebSocketChannel.connect('ws://echo.websokcet.org');
  String _text = '';

  void _sendMessage() {
    if(_controller.text.isNotEmpty) {
      channel.sink.add(_controller.text);
    }
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('WebSocket')),
      body: Column(
        children: <Widget>[
          Form(
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'send a message'),
            ),
          ),
          StreamBuilder(
            stream: channel.stream,
            builder: (context, snapshot) {
              print(snapshot);
              if (snapshot.hasError) {
                _text = '网络不通';
              } else if (snapshot.hasData) {
                _text = "echo:" + snapshot.data;
              }

              return new Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(_text),
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sendMessage,
        child: Icon(Icons.send),
      ),
    ));
  }
}
