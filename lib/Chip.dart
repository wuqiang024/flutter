import 'package:flutter/material.dart';

void main() => runApp(ChipWidget());

class ChipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('ChipWidget'),
            ),
            body: Padding(
              padding: EdgeInsets.all(20.0),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 10.0,
                runSpacing: 10.0,
                children: <Widget>[
                  Chip(avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H')), label: Text('text')),
                  Chip(avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H')), label: Text('text')),
                  Chip(avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H')), label: Text('text')),
                  Chip(avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H')), label: Text('text')),
                  Chip(avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H')), label: Text('text')),
                  Chip(
                      avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                      label: Text('text')
                      ),
                  Chip(
                      avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                      label: Text('text')
                      )
                ],
              ),
            )));
  }
}
