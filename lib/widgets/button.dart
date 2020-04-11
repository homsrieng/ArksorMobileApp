import 'package:arksormobileapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArkSorButton{
  static Widget btnBorderRadius(var text){
    return (
        FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: ArksorColor.primaryColor)
            ),
            color: ArksorColor.primaryColor,
            onPressed: () => {},
            child:
            Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                        ],),
                    ),
                  )
                ])
        )
    );
  }
  static Widget btnBorderRadiusIcon(var text,IconData icon){
    return (
      FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          side: BorderSide(color: ArksorColor.primaryColor)
        ),
        color: ArksorColor.primaryColor,
            onPressed: () => {},
            child:
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
                          Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                        ],),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(),
                    )
              ])
      )
    );
  }
}