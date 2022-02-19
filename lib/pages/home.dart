import 'package:flutter/material.dart';
import 'package:navigation7_skillbox/service/json_decode.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Text('Home',style: TextStyle(color: Colors.blue),),
                onTap: () {
                  Navigator.of(context).pushNamed('/');
                },
              ),
              ListTile(
                leading: Text('Artists'),
                onTap: () {
                  Navigator.of(context).pushNamed('/artists');
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home Page',
            ),
          ],
        ),
      ),
    );
  }
}