import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FutureBuild.dart';
import 'PullEffect.dart';
import 'RichText.dart';
import 'Recognizer.dart';
import 'Swich.dart';

void main() => runApp(IndexPage());

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> _bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.conversation_bubble),
      title: Text('沸点'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text('发现'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.book),
      title: Text('小册'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('我'),
    ),
  ];

  int _currentIndex = 0;
  Widget _currentPage;
  
  final List<Widget> _tabBodies = [
    new FutureBuilderPage(),
    new PullEffect(),
    new CWidget(),
    new RecogonizerPage(),
    new SwitchPage(),
  ];

  @override
  void initState() {
    super.initState();
    _currentPage = _tabBodies[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: _bottomTabs,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _currentPage = _tabBodies[_currentIndex];
            });
          },
        ),
        body: _currentPage,
      ),
    );
  }
}
