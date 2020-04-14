import 'package:arksormobileapp/constant/constant.dart';
import 'package:arksormobileapp/diment/diment.dart';
import 'package:arksormobileapp/model/screen_argument.dart';
import 'package:arksormobileapp/service/internet.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/widgets/button.dart';
import 'package:arksormobileapp/widgets/internet_conn.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Registration extends StatefulWidget {
  @override
  _Registration createState() => _Registration();
}
class _Registration extends State<Registration>{
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
  Widget formInputVerifyCode(){
    return(
        Expanded(child:
        Align(
          alignment: FractionalOffset.center,
          child: (
              Row(
                children: <Widget>[
                  new Expanded(child:
                  Container(
                    padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                        bottom: 20
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage('assets/company/avatar_placeholder.png')
                                    )
                                )),
                          ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(child:
                            TextField(
                                decoration: InputDecoration(
                                  labelText: "Name",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  labelStyle: TextStyle(fontSize: Diment.mlabel)
                                )
                            ))
                          ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(child:
                            TextField(
                                decoration: InputDecoration(
                                    labelText: "Address",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    labelStyle: TextStyle(fontSize: Diment.mlabel)
                                )
                            ))
                          ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(child:
                            TextField(
                                decoration: InputDecoration(
                                    labelText: "School",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    labelStyle: TextStyle(fontSize: Diment.mlabel)
                                )
                            ))
                          ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(child:
                            TextField(
                                decoration: InputDecoration(
                                    labelText: "Work Place",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    labelStyle: TextStyle(fontSize: Diment.mlabel)
                                )
                            ))
                          ],),
                        Row(children: <Widget>[
                          new Expanded(child:
                          Container(
                              height: 45,
                              margin: const EdgeInsets.only(
                                  top: 20),
                              child:
                              FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(Diment.sRadius),
                                      side: BorderSide(color: ArksorColor.primaryColor)
                                  ),
                                  color: ArksorColor.primaryColor,
                                  onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()))},
                                  child:
                                  ArkSorButton.btnArksor("Register"),
                              )
                          )
                          )
                        ]),
                      ],),
                  )
                  )
                ],)
          ),
        )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ArksorColor.primaryColor,
        title: Text("Registration"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          formInputVerifyCode(),
          if(getString(_source)==Constant.OFFLINE)
            internetConnection.internetStatus()
        ],
      ),
    );
  }
  @override
  void dispose() {
    _connectivity.disposeStream();
    super.dispose();
  }
}