import 'dart:math';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/utils/font_size.dart';
import 'package:arksormobileapp/widgets/button.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget{
  Widget header() {
    return(
        Row(
          children: <Widget>[
            new Expanded(
                flex: 1,
                child:
                Container(
                  height: 200,
                  decoration: new BoxDecoration(color: ArksorColor.primaryColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("ARKSOR",style: TextStyle(fontSize: ArksorFontSize.title,fontWeight: FontWeight.bold,color: Colors.white)),
                        ])
                    ],
                  ),
                )
            )
        ],)
    );
  }
  Widget formLogin() {
    return (
      Container(
          padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
              bottom: 20
          ),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                new Expanded(child:
                TextField(
                textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      hintText: 'Please input phone number',
                      hintStyle: TextStyle(color: Colors.grey),
                    )
                ))
              ]),
              Row(children: <Widget>[
                new Expanded(child: 
                  Container(
                    height: 45,
                    margin: const EdgeInsets.only(
                    top: 20),
                    child: 
                    ArkSorButton.button("Login")
                  )
                )
              ]),
              Row(children: <Widget>[
                new Expanded(child: 
                  Container(
                    height: 45,
                    margin: const EdgeInsets.only(
                    top: 5),
                    child: 
                    ArkSorButton.button("Login With Facebook")
                  )
                )
              ]),
              Row(children: <Widget>[
                new Expanded(child: 
                  Container(
                    height: 45,
                    margin: const EdgeInsets.only(
                    top: 5),
                    child: 
                    ArkSorButton.button("Login With Email")
                  )
                )
              ])
            ],
          ),
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          header(),
          formLogin(),
        ],
      )
    );
  }
}