import 'package:flutter/material.dart';

void main() => runApp(HeroPage());

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Builder(
              builder: (context) {
                return Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return new SecondPage();
                      }));
                    },
                    child: Hero(
                      tag: 'test',
                      child: Image.asset('assets/images/test.jpg', fit: BoxFit.cover),
                    ),
                  ),
                );
              },
            )));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 100.0,
      height: 100.0,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: 'test',
          child: Image.asset('assets/images/test.jpg', fit: BoxFit.contain),
        ),
      ),
    ));
  }
}
