import 'package:arksormobileapp/utils/colors.dart';
import 'package:flutter/material.dart';

class ArkSorButton{
  static Widget button(var text){
    return (
      FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          side: BorderSide(color: ArksorColor.primaryColor)
        ),
        color: ArksorColor.primaryColor,
            onPressed: () => {},
            child: 
            Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
      )
    );
  }
}