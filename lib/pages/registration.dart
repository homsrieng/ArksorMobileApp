import 'package:arksormobileapp/constant/constant.dart';
import 'package:arksormobileapp/diment/diment.dart';
import 'package:arksormobileapp/model/screen_argument.dart';
import 'package:arksormobileapp/service/internet.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/widgets/button.dart';
import 'package:arksormobileapp/widgets/date_picker_bottom_sheet.dart';
import 'package:arksormobileapp/widgets/internet_conn.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Registration extends StatefulWidget {
  @override
  _Registration createState() => _Registration();
}
class _Registration extends State<Registration>{
  Map _source = {ConnectivityResult.none: false};
  MyConnectivity _connectivity = MyConnectivity.instance;
  InternetConnection internetConnection = new InternetConnection();


  bool _showTitle = true;

  DateTimePickerLocale _locale = DateTimePickerLocale.en_us;
  List<DateTimePickerLocale> _locales = DateTimePickerLocale.values;

  String _format = 'yyyy-MMMM-dd';
  TextEditingController _formatCtrl = TextEditingController();
  DateTime _dateTime;
  @override
  void initState() {
    super.initState();
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
    _dateTime = DateTime.parse(INIT_DATETIME);
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
  /// Display date picker.
  void _showDatePicker() {

    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        // showTitle: _showTitle,
        // confirm: Text('custom Done', style: TextStyle(color: Colors.red)),
        // cancel: Text('custom cancel', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      //initialDateTime: _dateTime,
      dateFormat: _format,
      locale: _locale,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  Widget formInputVerifyCode(){
    return(
        Expanded(child:
        Align(
          alignment: FractionalOffset.center,
          child: (
              SingleChildScrollView(child:
              Row(
                children: <Widget>[
                  new Expanded(
                      child:
                      Container(
                        padding: const EdgeInsets.only(
                            top: 20,
                            left: 20,
                            right: 20,
                            bottom: 20
                        ),
                        child:Column(
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
                                        labelText: "Name*",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        labelStyle: TextStyle(fontSize: Diment.mlabel)
                                    )
                                ))
                              ],),
                            Row(
                              children: <Widget>[
                                new Text('Male'),
                                new Radio(
                                  value: 0,
                                ),
                                new Text('Female'),
                                new Radio(
                                  value: 1,
                                ),
                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                               new Expanded(child:
                               GestureDetector(
                                   onTap:()=>_showDatePicker(),
                                   child:AbsorbPointer(
                                     child: TextField(decoration: InputDecoration(hintText: "yyyy-MMMM-dd",prefixIcon: Icon(Icons.calendar_today),labelText: '${_dateTime.year}-${_dateTime.month.toString().padLeft(2, '0')}-${_dateTime.day.toString().padLeft(2, '0')}'),),
                                   )
                               ),
                               )
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Expanded(child:
                                TextField(
                                    decoration: InputDecoration(
                                        labelText: "Address*",
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
                                        labelText: "School*",
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
                                        labelText: "Work Place*",
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
              )
          ),
        )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ArksorColor.primaryColor,
        title: Text("Registration"),
      ),
      body:Column(
        children: <Widget>[
          formInputVerifyCode(),
          if(getString(_source)==Constant.OFFLINE)
            internetConnection.internetStatus(),
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