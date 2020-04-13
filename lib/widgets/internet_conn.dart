import 'package:arksormobileapp/service/internet.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InternetConnection{

  Widget internetStatus() {
      return (
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Row(
                children: <Widget>[
                  new Expanded(
                      flex: 1,
                      child:
                      Container(
                        height: 40,
                        decoration: new BoxDecoration(
                            color: ArksorColor.primaryColor),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text("No Internet Connection",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red)),
                                ])
                          ],
                        ),
                      )
                  )
                ],),
            ),
          )
      );
  }
}