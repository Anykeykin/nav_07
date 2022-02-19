import 'package:flutter/material.dart';
// import 'package:navigation7_skillbox/service/json_decode.dart';

class ArtistsInfo extends StatefulWidget {
  final name;
  final about;
  static const routeName = '/artinfo';
  const ArtistsInfo({Key key, this.name, this.about}) : super(key: key);

  @override
  _ArtistsInfoState createState() => _ArtistsInfoState();
}

class _ArtistsInfoState extends State<ArtistsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.name}'),
      ),
      body: Center(
          child:
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Text('${widget.about}'),
              )
            ],
          )
      ),
    );
  }
}