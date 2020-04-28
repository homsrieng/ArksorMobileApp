import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/widgets/feed_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification Detail"),
        backgroundColor: ArksorColor.primaryColor,
      ),
      body: Center(
        child: FeedItem.item(context),
      ),
    );
  }
}