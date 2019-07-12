import 'package:flutter/material.dart';

void main() => runApp(GridViewPage());

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: _buildGrid2(),
    ));
  }

  Widget _buildGrid1() {
    return GridView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: List.generate(50, (index) {
        return SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            margin: EdgeInsets.all(10.0),
            color: Colors.blue,
          ),
        );
      }).toList(),
    );
  }

  Widget _buildGrid2() {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      children: List.generate(50, (index) {
        return SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            color: Colors.blue,
          ),
        );
      }).toList(),
    );
  }
}
