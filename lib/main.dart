import 'package:flutter/material.dart';
import 'package:navigation7_skillbox/pages/home.dart';
import 'package:navigation7_skillbox/pages/artist.dart';
import 'package:navigation7_skillbox/pages/artists_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          return HomePage();
        });
      },
// ignore: missing_return
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (BuildContext context) {
              return HomePage();
            });
          case Artists.routeName:
            return MaterialPageRoute(builder: (BuildContext context) {
              return Artists();
            });
          case ArtistsInfo.routeName:
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(builder: (BuildContext context) {
              return ArtistsInfo(
                name: args['name'],
                about: args['about'],
              );
            });
          default:
            return MaterialPageRoute(builder: (BuildContext context) {
              return HomePage();
            });
        }
      },
// routes: {
//   '/' : (BuildContext context) => HomePage(),
//   '/artists' : (BuildContext context) => Artists(),
//   '/artinfo' : (BuildContext context) => ArtistsInfo(),
// },
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
