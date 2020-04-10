import 'package:flutter/material.dart';
class Login extends StatelessWidget{
  Widget logo() {
    return  Padding(
      padding: const EdgeInsets.only(
          top: 20
      ),
      child:
      ClipRRect(
        borderRadius: new BorderRadius.circular(10.0),
        child: Image.asset('assets/company/feed_logo.png',width: 170),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              logo()
            ],)
          ],
        ),
      ),
    );
  }
}