import 'package:arksormobileapp/utils/font_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationListItem {
  static Widget notificationItem(BuildContext context) {
    return (
        Row(
          children: <Widget>[
            new Expanded(
                child:
                Container(
                  padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                      bottom: 10
                  ),
                  child:Column(
                    children: <Widget>[
                      Row(
                          children: [
                            new Column(
                              children: <Widget>[
                                Row(children: <Widget>[
                                  new Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage('assets/company/avatar_placeholder.png')
                                        )
                                    ),
                                  ),
                                  new Container(
                                    padding: const EdgeInsets.only(
                                        top: 5,
                                        left: 5,
                                        right: 5,
                                        bottom: 5
                                    ),
                                    margin: const EdgeInsets.only(
                                        left: 5
                                    ),
                                  )
                                ],)
                              ],
                            ),
                            Column(children: <Widget>[
                              Row(children: <Widget>[
                                Container(
                                  width: 300,
                                  child: Text("Name Surename",style: TextStyle(fontWeight: FontWeight.bold),),
                                )
                              ],),
                              Row(children: <Widget>[
                                Container(
                                  width: 300,
                                  child: Text("SizedBox.expand will make the button take full width and height,"),
                                )
                              ],)
                            ],)
                          ]
                      )
                    ],),
                )
            )
          ],)
    );
  }
}