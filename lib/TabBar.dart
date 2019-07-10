import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  PageController _pageController = new PageController();
  TabController _tabController;
  List<String> _tabs = ['首页', '客户', '交易', '我的'];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('test'),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_alarm),
      ),
      body: _body(),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          controller: _tabController,
          tabs: _tabs.map((v) {
            return Tab(
              child: Text('$v'),
            );
          }).toList(),
        ),
      ),
    ));
  }

  Widget _body() {
    return PageView(
      controller: _pageController,
      children: _tabs.map((v) {
        return Container(
          child: Text('$v'),
        );
      }).toList(),
    );
  }
}
