import 'package:arksormobileapp/pages/login.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/utils/margin.dart';
import 'package:arksormobileapp/widgets/setting_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'feed_item_detail.dart';

class SettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        backgroundColor: ArksorColor.primaryColor,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              new Expanded(
                  child:
                  Container(
                    margin: const EdgeInsets.only(
                        bottom: 10
                    ),
                    color: Colors.white,
                    child:Column(
                      children: <Widget>[
                        SettingItem.item("Name", "Reahou Dev"),
                        SettingItem.item("Gender", "Male"),
                        SettingItem.item("Date of Birth", "08-01-1992"),
                        SettingItem.item("School", "NUM"),
                        SettingItem.item("Work Place", "DTT Koh Pich"),
                        GestureDetector(
                            onTap:()=>{Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()))},
                            child:AbsorbPointer(
                              child: SettingItem.itemCustomStyle("Logout", TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                            )
                        ),
                      ],),
                  )
              )
            ],)
        ]),
    );
  }
}


