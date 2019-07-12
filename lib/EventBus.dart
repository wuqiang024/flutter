import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';

EventBus eventBus = EventBus();

class UserLoggedInEvent {
  String text;

  UserLoggedInEvent(String text) {
    this.text = text;
  }
}

void main() => runApp(EventBusPage());

class EventBusPage extends StatefulWidget {
  @override
  EventBusPageState createState() {
    return new EventBusPageState();
  }
}

class EventBusPageState extends State<EventBusPage> {
  String text = '测试';

  String result = '2222';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Container(
              child: InkWell(
                onTap: () {
                  eventBus.fire(
                    UserLoggedInEvent(text),
                  );
                },
                child: RaisedButton(
                  child: Text('点我触发'),
                ),
              ),
            ),
            Container(
              child: Builder(builder: (context){
                eventBus.on<UserLoggedInEvent>().listen((event) {
                  setState((){
                    result = event.text;
                  });
                });

                return Text('$result');
              }),
            )
          ],
        ),
      ),
    );
  }
}
