import 'package:arksormobileapp/utils/style.dart';
import 'package:flutter/material.dart';
class ArkSorButton{
  static Widget btnArksor(var text){
    return (
        Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(text,style: ArksorStyle.textButtonStyle())
                  ],),
              ),
            )
        ])
    );
  }
  static Widget btnArksorIcon(var text,IconData icon){
    return (
          Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Icon(icon,color: Colors.white,),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text(text,style: ArksorStyle.textButtonStyle())
                ],),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(),
            )
          ])
    );
  }
}