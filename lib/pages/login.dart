import 'package:arksormobileapp/constant/constant.dart';
import 'package:arksormobileapp/diment/diment.dart';
import 'package:arksormobileapp/pages/registration.dart';
import 'package:arksormobileapp/pages/verification_code.dart';
import 'package:arksormobileapp/service/internet.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/utils/font_size.dart';
import 'package:arksormobileapp/utils/margin.dart';
import 'package:arksormobileapp/widgets/button.dart';
import 'package:arksormobileapp/widgets/internet_conn.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_offline/flutter_offline.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}
class _Login extends State<Login>{

  Map _source = {ConnectivityResult.none: false};
  MyConnectivity _connectivity = MyConnectivity.instance;

  InternetConnection internetConnection = new InternetConnection();

  @override
  void initState() {
    super.initState();
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
  }

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
                          Text("ARKSOR",
                              style: TextStyle(
                                  fontSize: ArksorFontSize.title,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
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
              top: ArksorMargin.defaultMargin,
              left: ArksorMargin.defaultMargin,
              right: ArksorMargin.defaultMargin,
              bottom: ArksorMargin.defaultMargin
          ),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                new Expanded(child:
                TextField(
                textAlign: TextAlign.center,
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
                    child:ArkSorButton.btnArksorRadius("Login",null, function: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCode())))
                  )
                )
              ]),
              Row(children: <Widget>[
                new Expanded(child: 
                  Container(
                    height: 45,
                    margin: const EdgeInsets.only(
                    top: 5),
                    child:ArkSorButton.btnArksorRadius("Login With Facebook",FontAwesomeIcons.facebook, function: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Registration())))
                  )
                )
              ]),
              Row(children: <Widget>[
                new Expanded(child: 
                  Container(
                    height: 45,
                    margin: const EdgeInsets.only(
                    top: 5),
                    child:ArkSorButton.btnArksorRadius("Login With Gmail",FontAwesomeIcons.google, function: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCode())))
                  )
                )
              ])
            ],
          ),
        )
    );
  }
  String getString(Map _source) {
    String string;
    switch (_source.keys.toList()[0]) {
      case ConnectivityResult.none:
        string = Constant.OFFLINE;
        break;
      case ConnectivityResult.mobile:
        string = Constant.ONLINE;
        break;
      case ConnectivityResult.wifi:
        string = Constant.ONLINE;
    }
    return string;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          header(),
          formLogin(),
          // if(getString(_source)==Constant.OFFLINE)
          // internetConnection.internetStatus()
        ],
      )
    );
  }
  @override
  void dispose() {
    _connectivity.disposeStream();
    super.dispose();
  }
}