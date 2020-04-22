import 'package:arksormobileapp/widgets/list_profile.dart';
import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {

  final ListWords listWordsDetail;

  DetailProfile({Key key, @required this.listWordsDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: const Text('Détail', style: TextStyle(color: Colors.white)),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(listWordsDetail.titlelist +' (on detail page)'),
              Text(listWordsDetail.definitionlist),
            ],
          ),
        )
    );
  }
}