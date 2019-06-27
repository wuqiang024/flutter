import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              buildUserAccountsDrawerHeader(),
              buildInkWell(),
              Divider(height:1.0)
            ],
          ),
        ),
      )
    );
  }

  InkWell buildInkWell() {
    return InkWell(
              onTap: (){},
              child: ListTile(
                title:Text('title'),
                subtitle: Text('subtitle'),
                leading: Icon(Icons.airline_seat_flat),
                trailing: Icon(Icons.chevron_right),
              ),
            );
  }

  UserAccountsDrawerHeader buildUserAccountsDrawerHeader() {
    return UserAccountsDrawerHeader(
              accountEmail: Text('test'), // 用户邮箱
              accountName: Text('name'), // 用户名
              currentAccountPicture: GestureDetector(  // 用户头像
                onTap: (){},
                child: CircleAvatar(
                  backgroundImage:NetworkImage('www.sohu.com/images/test.jpg'),
                ),
              ),
              otherAccountsPictures: <Widget>[  // 粉丝头像
                GestureDetector(
                  onTap: (){},
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('www.soh.com/test.jpg'),
                  ),
                )
              ],
            );
  }
}
