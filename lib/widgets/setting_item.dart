import 'package:arksormobileapp/utils/margin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingItem{
  static Widget item(String fieldName, String value) {
    return(
        Container(
          padding: const EdgeInsets.only(
              top: ArksorMargin.defaultMargin,
              bottom: ArksorMargin.defaultMargin,
              left: ArksorMargin.defaultMargin,
              right: ArksorMargin.defaultMargin,
          ),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[100]))
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(
                            left: 10
                        ),
                        width: 100,
                        child: Row(
                          children: <Widget>[
                            Text("$fieldName")
                          ],
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(
                            left: 10
                        ),
                        child: Row(
                          children: <Widget>[
                            Text("$value")
                          ],
                        ),
                      )
                    ],)
                  ],
                ),
                new Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                )
              ]
          ),
        )
    );
  }
  static Widget itemCustomStyle(String fieldName,TextStyle style) {
    return(
        Container(
          padding: const EdgeInsets.only(
            top: ArksorMargin.defaultMargin,
            bottom: ArksorMargin.defaultMargin,
            left: ArksorMargin.defaultMargin,
            right: ArksorMargin.defaultMargin,
          ),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[100]))
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(
                            left: 10
                        ),
                        width: 100,
                        child: Row(
                          children: <Widget>[
                            Text("$fieldName",style: style)
                          ],
                        ),
                      ),
                    ],)
                  ],
                ),
                new Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                )
              ]
          ),
        )
    );
  }
}