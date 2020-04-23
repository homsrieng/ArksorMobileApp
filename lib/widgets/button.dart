import 'package:arksormobileapp/diment/diment.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/utils/style.dart';
import 'package:flutter/material.dart';
class ArkSorButton{
  static Widget btnArksorRadius(String str,IconData icon,{Function function}) {
    return(
        FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(Diment.sRadius),
              side: BorderSide(color: ArksorColor.primaryColor)
          ),
          color: ArksorColor.primaryColor,
          onPressed: function,
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
                        Text(str,style: ArksorStyle.textButtonStyle())
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
  static Widget btnArksorNoBg(String str,IconData icon,{Function function}) {
    return(
        FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(Diment.sRadius),
                side: BorderSide(color: ArksorColor.primaryColor)
            ),
            color: Colors.white,
            onPressed: function,
            child:
            Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(str,style:TextStyle(color: Colors.black))
                        ],),
                    ),
                  ),
                ])
        )
    );
  }
}