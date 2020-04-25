import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/widgets/button.dart';
import 'package:arksormobileapp/widgets/feed_item.dart';
import 'package:arksormobileapp/widgets/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class FeedItemDetail extends StatelessWidget{
  Widget listComment() {
    return (
        Expanded(child:
        Align(
          alignment: FractionalOffset.topCenter,
          child: (
              SingleChildScrollView(child:
              Column(children: <Widget>[
                FeedItem.listComment(),
                FeedItem.listComment(),
                FeedItem.listComment(),
                FeedItem.listComment(),
                FeedItem.listComment(),
                FeedItem.listComment(),
                FeedItem.listComment()
              ],)
              )
          ),
        )
        )
    );
  }
  Widget userComment(BuildContext context) {
    return(
        Row(children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
                margin: const EdgeInsets.only(
                    left: 20, bottom: 20,top: 10
                ),
                height: 40,
                child: ArksorTextInput.textFormFieldRadius("Comments...")
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                height: 40,
                margin: const EdgeInsets.only(
                    right: 20, bottom: 20,top: 10,left: 5
                ),
                child:ArkSorButton.btnArksorNoBg("Send", null,function: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FeedItemDetail())))
            ),
          ),
        ],)
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Surename post"),
        backgroundColor: ArksorColor.primaryColor,
      ),
      body: Column(
        children: <Widget>[
          FeedItem.item(context),
          listComment(),
          userComment(context)
        ],
      ),
    );
  }
}