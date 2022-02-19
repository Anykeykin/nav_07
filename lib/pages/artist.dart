
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:navigation7_skillbox/service/json_decode.dart';

class Artists extends StatefulWidget {
static const routeName = '/artists';
const Artists({Key key}) : super(key: key);

@override
_ArtistsState createState() => _ArtistsState();
}

class _ArtistsState extends State<Artists> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Artists'),
),
drawer: Drawer(
child: SafeArea(
child: Column(
children: <Widget>[
ListTile(
leading: Text('Home'),
onTap: () {
Navigator.of(context).pushNamed('/');
},
),
ListTile(
leading: Text('Artists',style: TextStyle(color: Colors.blue),),
onTap: () {
Navigator.of(context).pushNamed('/artists');
},
),
],
),
),
),
body:  Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
for(var elem = 0;elem < result.length;elem++)
ListTile(
title: Text(result[elem]["name"]),
onTap: () => Navigator.of(context).pushNamed('/artinfo', arguments: {
'name': result[elem]["name"],
'about': result[elem]["about"]
})
),
],
),
);
}
}